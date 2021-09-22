import Foundation

func solution(_ s:String) -> Bool
{
    let string: [String] = s.lowercased().map {String($0)}
    let p = string.filter{$0 == "p"}.count
    let y = string.filter{$0 == "y"}.count
    return p == y
}