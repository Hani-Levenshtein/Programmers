func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).lazy.map { Int64($0 * x) }
}
