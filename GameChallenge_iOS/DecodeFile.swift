//
//  DecodeFile.swift
//  GameChallenge_iOS
//
//  Created by 柏呈 on 2018/12/19.
//  Copyright © 2018 柏呈. All rights reserved.
//

import Foundation
struct SignUp:Decodable {
    var updatedAt:TimeInterval
    var list:[SignUpData]
    
}
struct SignUpData:Decodable {
    var name:String
    var email:String
    var password:String
    var password_confirmation:String
    
}

struct TestMsg: Decodable {
    var response: String
    var result: String
}

struct TestCorrectMsg: Decodable {
    var result: String
//    var response: Response
//    
//    struct Response: Decodable {
//        var name: String
//        var coin: String
//        var api_token: String
//    }
}

class APISystem {
    
    class func login() {
        
    }
    
    class func register() {
        
    }
    
    class func getData(json:[String:Any], from urlString: String, completeion: @escaping (Data) -> Void) {
        // 判斷 urlString 是否能被轉成 Url，若無法則 return，不繼續後面的操作。
        guard let url = URL(string: urlString) else { return }
        let jsons = json
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let data = try? JSONSerialization.data(withJSONObject: json, options: [])
        request.httpBody = data
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        // 使用 URLSession.shared.data(with: url) 來獲取網址中的數據。
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            // 如果 error 存在，印出錯誤訊息後，不接續後面操作。
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            // 檢查 data 是否存在，若是存在透過 compeletion 這個逃逸閉包（escaping clourse）將 data 傳遞出去。若是不存在則 return。
            guard let data = data else { return }
            
            completeion(data)
            
            }.resume() // 別忘了加上 resume() 才會開始運作。
    }
    
}
