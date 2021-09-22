import Foundation

func solution(_ table:[String], _ languages:[String], _ preference:[Int]) -> String {
    var answer = ""
    var maxScore = 0
    let list = table.sorted(by: <).map { $0.components(separatedBy: " ") }
    
    for elements in list {
        var score = 0
        for index in 1...5 {
            for (language, prefer) in zip(languages, preference) {
                if elements[index] == language {
                    score += (6-index) * prefer
                }
            }
        }
        if maxScore < score {
            answer = elements[0]
            maxScore = score
        }
    }
 
    return answer
}