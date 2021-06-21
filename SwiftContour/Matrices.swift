import Darwin

typealias mat44 = SIMD16<Float>

extension mat44 {
    static let identity: mat44 = mat44(vec4.unitX, vec4.unitY, vec4.unitZ, vec4.unitW)
    
    var row0: vec4 { lowHalf.lowHalf }
    var row1: vec4 { lowHalf.highHalf }
    var row2: vec4 { highHalf.lowHalf }
    var row3: vec4 { highHalf.highHalf }
    
    var transposed: mat44 {
        mat44(
            self[0], self[4], self[8], self[12],
            self[1], self[5], self[9], self[13],
            self[2], self[6], self[10], self[14],
            self[3], self[7], self[11], self[15]
        )
    }
    
    static func createPerspectiveFieldOfView(fovY: Float, aspect: Float, zNear: Float, zFar: Float) -> mat44 {
        let yMax = zNear * tanf(0.5 * fovY)
        let yMin = -yMax
        let xMin = yMin * aspect
        let xMax = yMax * aspect
        
        return createPerspectiveFieldOfViewOffCenter(left: xMin, right: xMax, bottom: yMin, top: yMax, zNear: zNear, zFar: zFar)
    }
    
    static func createPerspectiveFieldOfViewOffCenter(left: Float, right: Float, bottom: Float, top: Float, zNear: Float, zFar: Float) -> mat44 {
        let x = 2 * zNear / (right - left)
        let y = 2 * zNear / (top - bottom)
        let a = (right + left) / (right - left)
        let b = (top + bottom) / (top - bottom)
        let c = -(zFar + zNear) / (zFar - zNear)
        let d = -(2 * zFar * zNear) / (zFar - zNear)
        
        return mat44(
            x, 0, 0, 0,
            0, y, 0, 0,
            a, b, c, -1,
            0, 0, d, 0
        )
    }
    
    static func createLookAt(cameraPosition: vec3, cameraTarget: vec3, cameraUp: vec3) -> mat44 {
        let z = (cameraPosition - cameraTarget).normalized
        let x = cameraUp.cross(z).normalized
        let y = z.cross(x)
        
        return mat44(
            x.x, y.x, z.x, 0,
            x.y, y.y, z.y, 0,
            x.z, y.z, z.z, 0,
            -(x.dot(cameraPosition)),
            -(y.dot(cameraPosition)),
            -(z.dot(cameraPosition)),
            1
        )
    }

    init(_ row0: vec4, _ row1: vec4, _ row2: vec4, _ row3: vec4) {
        self.init(
            row0.x, row0.y, row0.z, row0.w,
            row1.x, row1.y, row1.z, row1.w,
            row2.x, row2.y, row2.z, row2.w,
            row3.x, row3.y, row3.z, row3.w
        )
    }
    
    static func *(_ a: mat44, _ b: mat44) -> mat44 {
        return mat44(
            a[0] * b[0] + a[1] * b[4] + a[2] * b[8] + a[3] * b[12],
            a[0] * b[1] + a[1] * b[5] + a[2] * b[9] + a[3] * b[13],
            a[0] * b[2] + a[1] * b[6] + a[2] * b[10] + a[3] * b[14],
            a[0] * b[3] + a[1] * b[7] + a[2] * b[11] + a[3] * b[15],

            a[4] * b[0] + a[5] * b[4] + a[6] * b[8] + a[7] * b[12],
            a[4] * b[1] + a[5] * b[5] + a[6] * b[9] + a[7] * b[13],
            a[4] * b[2] + a[5] * b[6] + a[6] * b[10] + a[7] * b[14],
            a[4] * b[3] + a[5] * b[7] + a[6] * b[11] + a[7] * b[15],

            a[8] * b[0] + a[9] * b[4] + a[10] * b[8] + a[11] * b[12],
            a[8] * b[1] + a[9] * b[5] + a[10] * b[9] + a[11] * b[13],
            a[8] * b[2] + a[9] * b[6] + a[10] * b[10] + a[11] * b[14],
            a[8] * b[3] + a[9] * b[7] + a[10] * b[11] + a[11] * b[15],

            a[12] * b[0] + a[13] * b[4] + a[14] * b[8] + a[15] * b[12],
            a[12] * b[1] + a[13] * b[5] + a[14] * b[9] + a[15] * b[13],
            a[12] * b[2] + a[13] * b[6] + a[14] * b[10] + a[15] * b[14],
            a[12] * b[3] + a[13] * b[7] + a[14] * b[11] + a[15] * b[15]
        )
    }
    
    static func *(_ m: mat44, _ v: vec4) -> vec4 {
        let a = m.row0 * v.x
        let b = m.row1 * v.y
        let c = m.row2 * v.z
        let d = m.row3 * v.w
        return a + b + c + d
    }
}
