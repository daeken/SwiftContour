import Darwin

typealias vec2 = SIMD2<Float>
typealias vec3 = SIMD3<Float>
typealias vec4 = SIMD4<Float>

extension vec2 {
    var length: Float { (x * x + y * y).squareRoot() }
    var lengthSquared: Float { x * x + y * y }
    var normalized: vec2 { self / length }
    var isNaN: Bool { x.isNaN || y.isNaN }
    
    func dot(_ b: vec2) -> Float { x * b.x + y * b.y }
    
    func rotate(_ theta: Float) -> vec2 {
        if theta == 0 { return self }
        let ca = cosf(theta)
        let sa = sinf(theta)
        return vec2(
            x * ca - y * sa,
            x * sa + y * ca
        )
    }

    static let zero = vec2(0, 0)
    static let one = vec2(1, 1)
    static let unitX = vec2(1, 0)
    static let unitY = vec2(0, 1)
}

extension vec3 {
    var length: Float { (x * x + y * y + z * z).squareRoot() }
    var lengthSquared: Float { x * x + y * y + z * z }
    var normalized: vec3 { self / length }
    var isNaN: Bool { x.isNaN || y.isNaN || z.isNaN }

    func dot(_ b: vec3) -> Float { x * b.x + y * b.y + z * b.z }
    func cross(_ b: vec3) -> vec3 {
        vec3(
            y * b.z - z * b.y,
            -(x * b.z - z * b.x),
            x * b.y - y * b.x
        )
    }
    
    static let zero = vec3(0, 0, 0)
    static let one = vec3(1, 1, 1)
    static let unitX = vec3(1, 0, 0)
    static let unitY = vec3(0, 1, 0)
    static let unitZ = vec3(0, 0, 1)
}

extension vec4 {
    var length: Float { (x * x + y * y + z * z + w * w).squareRoot() }
    var lengthSquared: Float { x * x + y * y + z * z + w * w }
    var normalized: vec4 { self / length }
    var isNaN: Bool { x.isNaN || y.isNaN || z.isNaN || w.isNaN }

    func dot(_ b: vec4) -> Float { x * b.x + y * b.y + z * b.z + w * b.w }
    
    static let zero = vec4(0, 0, 0, 0)
    static let one = vec4(1, 1, 1, 1)
    static let unitX = vec4(1, 0, 0, 0)
    static let unitY = vec4(0, 1, 0, 0)
    static let unitZ = vec4(0, 0, 1, 0)
    static let unitW = vec4(0, 0, 0, 1)
}

func length(_ v: vec2) -> Float { v.length }
func length(_ v: vec3) -> Float { v.length }
func length(_ v: vec4) -> Float { v.length }

func abs(_ v: vec2) -> vec2 { vec2(abs(v.x), abs(v.y)) }
func abs(_ v: vec3) -> vec3 { vec3(abs(v.x), abs(v.y), abs(v.z)) }
func abs(_ v: vec4) -> vec4 { vec4(abs(v.x), abs(v.y), abs(v.z), abs(v.z)) }

func min(_ a: vec2, _ b: vec2) -> vec2 { vec2(min(a.x, b.x), min(a.y, b.y)) }
func min(_ a: vec2, _ b: Float) -> vec2 { vec2(min(a.x, b), min(a.y, b)) }
func min(_ a: vec3, _ b: vec3) -> vec3 { vec3(min(a.x, b.x), min(a.y, b.y), min(a.z, b.z)) }
func min(_ a: vec3, _ b: Float) -> vec3 { vec3(min(a.x, b), min(a.y, b), min(a.z, b)) }
func min(_ a: vec4, _ b: vec4) -> vec4 { vec4(min(a.x, b.x), min(a.y, b.y), min(a.z, b.z), min(a.w, b.w)) }
func min(_ a: vec4, _ b: Float) -> vec4 { vec4(min(a.x, b), min(a.y, b), min(a.z, b), min(a.w, b)) }

func max(_ a: vec2, _ b: vec2) -> vec2 { vec2(max(a.x, b.x), max(a.y, b.y)) }
func max(_ a: vec2, _ b: Float) -> vec2 { vec2(max(a.x, b), max(a.y, b)) }
func max(_ a: vec3, _ b: vec3) -> vec3 { vec3(max(a.x, b.x), max(a.y, b.y), max(a.z, b.z)) }
func max(_ a: vec3, _ b: Float) -> vec3 { vec3(max(a.x, b), max(a.y, b), max(a.z, b)) }
func max(_ a: vec4, _ b: vec4) -> vec4 { vec4(max(a.x, b.x), max(a.y, b.y), max(a.z, b.z), max(a.w, b.w)) }
func max(_ a: vec4, _ b: Float) -> vec4 { vec4(max(a.x, b), max(a.y, b), max(a.z, b), max(a.w, b)) }
