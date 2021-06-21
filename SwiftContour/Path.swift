class Path {
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
        points = np
    }
    
    func eachSegment(_ f: (vec2, vec2) -> ()) {
        if points.count < 2 { return }
        var last = points[0]
        for p in points[1...] {
            f(last, p)
            last = p
        }
    }
    
    func eachPoint(_ f: (vec2) -> ()) {
        if points.count == 0 { return }
        for p in points { f(p) }
    }

}
