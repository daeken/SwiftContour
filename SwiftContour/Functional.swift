precedencegroup CompositionPrecedence {
    associativity: left
}

infix operator >>>: CompositionPrecedence

func >>> <T, U, V>(lhs: @escaping (T) -> U, rhs: @escaping (U) -> V) -> (T) -> V {
    return { rhs(lhs($0)) }
}

func generator<T>(_ f: ((T) -> ()) -> ()) -> [T] {
    var arr : [T] = []
    f({ arr.append($0) })
    return arr
}

func binarySearch(_ min: Float, _ max: Float, _ eps: Float, _ f: (Float) -> Float) -> Float {
    var min = min
    var max = max
    while(max - min > eps) {
        let mid = (max + min) / 2
        let d = f(mid)
        if d == 0 { return mid }
        if d < 0 { max = mid }
        else { min = mid }
    }
    return (max + min) / 2
}
