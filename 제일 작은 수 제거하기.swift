func solution(_ arr:[Int]) -> [Int] {
    var index = 0
    var answer = arr
    for (i, element) in arr.enumerated() {
        if element < arr[index] { index = i }
    }
    answer.remove(at: index)
    if answer.isEmpty { answer.append(-1) }
    return answer
}