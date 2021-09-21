import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    return zip(absolutes, signs).reduce(0) { $0 + $1.0 * convert(sign: $1.1) } 
}

func convert(sign: Bool) -> Int {
    return sign == true ? 1:-1
}