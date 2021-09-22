import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var stack: [Int] = []
    var board = board
    var boom = 0
    let limit = board.count
    
    for move in moves {
        let j = move - 1
        for i in 0..<limit {
            if board[i][j] != 0 {
                if !stack.isEmpty && stack.last! == board[i][j] {
                    while !stack.isEmpty && stack.last! == board[i][j] {
                        stack.removeLast()
                        boom += 1
                        
                    }
                    boom += 1
                } else {
                    stack.append(board[i][j])
                }
                board[i][j] = 0
                break
            } 
        }
        
    }
    return boom
}