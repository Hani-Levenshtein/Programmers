func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let answer = arr.sorted(by: <).filter{ $0 % divisor == 0 }
    return answer.count == 0 ? [-1] : answer
}