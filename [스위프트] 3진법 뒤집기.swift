import Foundation

func solution(_ n:Int) -> Int {
    let ternary = String(n, radix: 3)
    var sum = 0
    var mul = 1
    for number in ternary {
        sum += mul * Int(String(number))!
        mul *= 3
    }
    
    return sum
}