import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var numberset = Set<Int>()
    let cnt = numbers.count
    
    for i in 0..<cnt {
        for j in 0..<cnt{
            if i == j { continue }
            numberset.insert(numbers[i]+numbers[j])
        }
    }
    
    return Array(numberset).sorted(by:<)
}