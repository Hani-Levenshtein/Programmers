import Foundation

func solution(_ record:[String]) -> [String] {
    
    let users: [String: String] = recordToUsers(record: record)
    let messages: [String] = recordToMessages(record: record, users: users)
    return messages
}

func recordToUsers(record: [String]) -> [String: String] {
    var users = [String: String]()
    
    record.forEach {
        let strings = $0.components(separatedBy: " ")
        let order = strings[0]
        if order == "Enter" || order == "Change" {
            let uid = strings[1]
            let name = strings[2]
            users[uid] = name
        }
    }
    return users
} 
    
func recordToMessages(record: [String], users: [String: String]) -> [String] {
    let output: [String: String] = ["Enter": "님이 들어왔습니다.",
                                    "Leave": "님이 나갔습니다."]
    var messages = [String]()
    
    record.forEach {
        let strings = $0.components(separatedBy: " ")
        let order = strings[0]
        let uid = strings[1]
        if order == "Enter" || order == "Leave" {
            messages.append(users[uid]! + output[order]!)
        }
    }
    return messages
}