import Foundation

func solution(_ s:String) -> Int {
    let hash = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var answer = s

    for (value, key) in hash.enumerated() {
        answer = answer.replacingOccurrences(of: key, with: String(value))
    }
    return Int(answer)!
}