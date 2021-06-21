import Darwin

typealias sdf2d = (vec2) -> Float
typealias sdf3d = (vec3) -> Float

let epsilon : Float = 0.001
let resolution : Float = 0.1
let stepRes : Float = 0.01

let minAngle : Float = 0
let maxAngle : Float = Float.pi / 180 * 175

let resolutionSquared = resolution * resolution

let cameraPos = vec3(2, 2, 10)
let projectionMatrix = mat44.createPerspectiveFieldOfView(fovY: Float.pi / 2, aspect: 1, zNear: 1, zFar: 1000)
let cameraMatrix = mat44.createLookAt(cameraPosition: cameraPos, cameraTarget: vec3(repeating: 0.0001), cameraUp: vec3.unitY)
let viewProject = cameraMatrix * projectionMatrix

func project(_ p: vec3) -> vec2 {
    var p4 = vec4(p, 1)
    p4 = viewProject * p4
    return p4.xy / p4.w * 10
}

func findContours(_ f3: @escaping sdf3d, _ bounds: (vec3, vec3), _ axes: [(vec3, Int, Float)]) -> [Path] {
    var paths: [Path] = []
    
    for (normal, step, max) in axes {
        let per = max / Float(step)
        for i in -step...step {
            paths.append(contentsOf: findIsoLines(f3, bounds, normal, per * Float(i)))
        }
    }
    
    return paths
}

func findIsoLines(_ f3: @escaping sdf3d, _ bounds: (vec3, vec3), _ planeNormal : vec3, _ planeOffset: Float) -> [Path] {
    let planeOrigin = planeNormal * planeOffset
    let xAxis = ((planeNormal - vec3.unitX).lengthSquared > epsilon
        ? vec3.unitX
        : (planeNormal - vec3.unitZ).lengthSquared > epsilon
                    ? vec3.unitZ : vec3.unitY)
    let yAxis = planeNormal.cross(xAxis).normalized
    let upDimension: (vec2) -> vec3 = { $0.x * xAxis + $0.y * yAxis + planeOrigin }
    let f = upDimension >>> f3
    
    let (lb, ub) = bounds
    let bd = (ub - lb).max() / 2
    let steps = Int((bd / resolution).rounded(.up))
    
    var paths: [ClosedPath] = []
    
    for y in (-steps...steps) {
        for x in (-steps...steps) {
            var p = vec2(Float(x) * resolution, Float(y) * resolution)
            if abs(f(p)) > resolutionSquared { continue }
            
            p = findClosestSurface(f, p)
            if paths.contains(where: { $0.containsClosed(p) }) { continue }
            let normal = firstDerivative(f, p)
            if normal.isNaN { continue }
            var orientation = normal.rotate(Float.pi / 2)
            
            let path = ClosedPath()
            var trash = false
            while !path.contains(p) {
                path.add(p)
                if paths.contains(where: { $0.containsClosed(p) }) { trash = true; break }
                let tp = p + orientation * stepRes
                let d = f(tp)
                if d < -epsilon || d > epsilon {
                    func compare(_ a: Float) -> Float { f(p + orientation.rotate(a) * stepRes) }
                    let theta = (d > 0
                                    ? binarySearch(minAngle, maxAngle, 0.00001, compare)
                                    : binarySearch(-maxAngle, -minAngle, 0.00001, compare))
                    orientation = orientation.rotate(theta)
                    p += orientation * stepRes
                    p = findClosestSurface(f, p)
                } else { p = tp }
            }
            
            if trash { continue }
            if path.count > 2 { paths.append(path) }
        }
    }
    
    paths.forEach { $0.mapSegments { (a, b) in
        generator { yield in
            let s = (b - a) / 10
            for i in 0...10 {
                yield(findClosestSurface(f, a + s * Float(i)))
            }
        }
    } }
    
    var paths3d = paths.map { ($0.points + [$0.points.last!]).map(upDimension) }
    paths3d = paths3d.map { removeHiddenSegments(f3, $0) }.reduce([], +)
    
    return paths3d.map { Path($0.map(project)) }
}

func march(_ f: sdf3d, _ from: vec3, _ to: vec3, _ steps: Int = 256) -> Float {
    let rd = (to - from).normalized
    var t: Float = 0
    for _ in 0..<steps {
        let p = from + rd * t
        let d = f(p)
        if abs(d) <= epsilon {
            return t / (to - from).length
        }
        t += d * 0.9
    }
    return 1
}

func isObscured(_ f: sdf3d, _ p: vec3) -> Bool {
    let p = findClosestSurface(f, p)
    return march(f, cameraPos, p) < 0.999
}

func findLastObscured(_ f: sdf3d, _ unobscured: vec3, _ obscured: vec3) -> vec3 {
    var unobscured = unobscured
    var obscured = obscured
    while (unobscured - obscured).lengthSquared > 0.00001 {
        let mp = (unobscured + obscured) / 2
        if isObscured(f, mp) {
            obscured = mp
        } else {
            unobscured = mp
        }
    }
    return obscured
}

func removeHiddenSegments(_ f: sdf3d, _ path: [vec3]) -> [[vec3]] {
    var paths: [[vec3]] = [[]]
    var lpoint: vec3? = nil
    var lastObscured = false
    var cpath = 0
    
    for p in path {
        let obscured = isObscured(f, p)
        if obscured {
            if lpoint == nil || lastObscured {
                lpoint = p
                lastObscured = true
                continue
            }
            lpoint = findLastObscured(f, lpoint!, p)
            lastObscured = true
            paths[cpath].append(lpoint!)
            cpath += 1
            paths.append([])
            continue
        }
        
        if lastObscured { paths[cpath].append(findLastObscured(f, p, lpoint!)) }
        lpoint = p
        paths[cpath].append(p)
        lastObscured = false
    }
    
    return paths.filter { print($0.count); return $0.count > 1 }
}

func findClosestSurface(_ f: sdf2d, _ p: vec2) -> vec2 {
    var p = p
    while true {
        let d = f(p)
        if d >= -epsilon && d <= epsilon { return p }
        let n = firstDerivative(f, p)
        p += d * ((d < 0 ? 0.5 : 0.5) * n)
    }
}

func findClosestSurface(_ f: sdf3d, _ p: vec3) -> vec3 {
    var p = p
    while true {
        let d = f(p)
        if d >= -epsilon && d <= epsilon { return p }
        let n = firstDerivative(f, p)
        p += d * ((d < 0 ? 0.5 : 0.5) * n)
    }
}


func firstDerivative(_ f: sdf2d, _ p: vec2) -> vec2 { gradient(f, p).normalized }
func gradient(_ f: sdf2d, _ p: vec2) -> vec2 {
    let h = vec2(epsilon, 0)
    return vec2(
        f(p - h) - f(p + h),
        f(p - h.yx) - f(p + h.yx)
    )
}

func firstDerivative(_ f: sdf3d, _ p: vec3) -> vec3 { gradient(f, p).normalized }
func gradient(_ f: sdf3d, _ p: vec3) -> vec3 {
    let h = vec3(epsilon, 0, 0)
    return vec3(
        f(p - h) - f(p + h),
        f(p - h.yxy) - f(p + h.yxy),
        f(p - h.yyx) - f(p + h.yyx)
    )
}
