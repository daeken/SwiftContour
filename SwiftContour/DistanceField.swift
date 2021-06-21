func scene(_ p: vec3) -> Float {
    sphere(p, 1)
}

func sphere(_ p: vec3, _ r: Float) -> Float {
    p.length - r
}

func box(_ p: vec3, _ b: vec3) -> Float {
    let q = abs(p) - b
    return length(max(q, 0.0)) + min(max(q.x, max(q.y, q.z)), 0.0)
}
