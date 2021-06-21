class ClosedPath {
    var points: [vec2] = []
    var count: Int { points.count }
    subscript(index: Int) -> vec2 { points[index] }
    
    init(_ points: [vec2] = []) { self.points = points }
    
    func add(_ p: vec2) { points.append(p) }
    
    func map(_ f: (vec2) -> vec2) { points = points.map(f) }
    func mapSegments(_ f: (vec2, vec2) -> [vec2]) {
        if(points.count < 2) { return }
        var last = points[0]
        points.append(last)
        var np: [vec2] = []
        for p in points[1...] {
            let rp = f(last, p)
            if(rp.count == 0) { continue }
            last = rp.last!
            np.append(contentsOf: rp)
        }
        if np.count > 0 {
            np[0] = np.last!
            np.removeLast()
        }
        points = np
    }
    
    func eachSegment(_ f: (vec2, vec2) -> ()) {
        if points.count < 2 { return }
        var last = points[0]
        for p in points[1...] {
            f(last, p)
            last = p
        }
        f(last, points[0])
    }
    
    func eachPoint(_ f: (vec2) -> ()) {
        if points.count == 0 { return }
        for p in points { f(p) }
        f(points[0])
    }
    
    func contains(_ p: vec2) -> Bool {
        if points.count < 2 { return false }
        var last = points[0]
        for o in points[1...] {
            let tmin = min(last, o)
            let tmax = max(last, o)
            if tmin.x <= p.x && tmin.y <= p.y && p.x <= tmax.x && p.y <= tmax.y { return true }
            last = o
        }
        return false
    }
    
    func containsClosed(_ p: vec2) -> Bool {
        if points.count < 2 { return false}
        var last = points.last!
        for o in points {
            let tmin = min(last, o)
            let tmax = max(last, o)
            if tmin.x <= p.x && tmin.y <= p.y && p.x <= tmax.x && p.y <= tmax.y { return true }
            last = o
        }
        return false
    }
}
