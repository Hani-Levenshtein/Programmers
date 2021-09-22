import Foundation
func solution(_ n:Int64) -> Int64 {
    let value = Int64(sqrt(Double(n)))
    if value * value == n {
        return (value + 1) * (value + 1)
    } else {
        return -1
    }
}