import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let one = [1,2,3,4,5]
    let two = [2,1,2,3,2,4,2,5]
    let three = [3,3,1,1,2,2,4,4,5,5]
    
    var result = [Int: Int]()
    result[1] = markingTest(answers: answers, choice: one)
    result[2] = markingTest(answers: answers, choice: two)
    result[3] = markingTest(answers: answers, choice: three)
   
    let maxScore = result.values.max()
    return result.filter { $0.value == maxScore }.keys.sorted()
}

func markingTest(answers: [Int], choice: [Int]) -> Int {
    var count = 0
    let size = choice.count
    for (index, answer) in answers.enumerated() {
        if answer == choice[index%size] {
            count = count + 1
        } 
    }
    return count
}