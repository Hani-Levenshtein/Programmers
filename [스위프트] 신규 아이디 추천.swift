import Foundation

func solution(_ new_id:String) -> String {
    var id: String = new_id
    
    id = id.lowercased()
    
    var temp = ""
    for char in id {
        if char.isLetter || char.isNumber || char == "-" || char == "_" || char == "." {
            temp.append(char)
        }
    }
    id = temp
    
    while id.contains("..") {
        id = id.replacingOccurrences(of: "..", with: ".")
    }
    
    while id.hasPrefix(".") {
        id.removeFirst()
    }
    
    while id.hasSuffix(".") {
        id.removeLast()
    }
    
    if id.isEmpty {
        id = "a"
    }
    
    if id.count >= 16 {
        id = String(id.prefix(15))
        if id.hasSuffix(".") {
            id.removeLast()
        }
    }
    
    while id.count <= 2 {
        id.append(id.last!)
    }
    
    return id
}