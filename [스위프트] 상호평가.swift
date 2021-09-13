import Foundation

func solution(_ scores:[[Int]]) -> String {
    
    let n = scores.count
    var answer = ""
    for j in 0..<n {
        var score = 0
        var array: [Int] = []
        var count = 0
        for i in 0..<n {
            array.append(scores[i][j])
            score += scores[i][j]
            if scores[j][j] == scores[i][j] { count += 1 }
        }
        array = array.sorted()
        if count == 1 && (array.first! == scores[j][j] || array.last! == scores[j][j]) {
            answer.append(grade(of: (score-scores[j][j])/(n-1)))
        } else {
            answer.append(grade(of: score/(n)))
        }
        
    }
    
    return answer
}

func grade(of score: Int) -> String {
    switch score {
    case 90...100:
        return "A"
    case 80..<90:
        return "B"
    case 70..<80:
        return "C"
    case 50..<70:
        return "D"
    default:
        return "F"
    }
}