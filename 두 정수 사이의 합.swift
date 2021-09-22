func solution(_ a:Int, _ b:Int) -> Int64 {
    var a = a
    var b = b
    if b < a { swap(&a, &b) }
    return Int64(b*(b+1)/2 - a*(a-1)/2)
}