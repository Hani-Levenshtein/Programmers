import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer: [Int] = []
    for command in commands {
        let first = command[0] - 1
        let last = command[1] - 1
        let nth = command[2] - 1
        
        let slicedArray = Array(array[first...last]).sorted(by: <)
        answer.append(slicedArray[nth])
    }
    
    return answer
}