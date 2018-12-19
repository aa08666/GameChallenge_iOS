//
//  SignUpViewController.swift
//  GameChallenge_iOS
//
//  Created by 柏呈 on 2018/12/18.
//  Copyright © 2018 柏呈. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordConTextField: UITextField!
    
    @IBAction func registerButton(_ sender: UIButton) {
        //        print("name is \(String(describing: self.nameTextField.text))")
        //        print("email is \(self.emailTextField.text)")
        //        print("password is \(self.passwordTextField.text)")
        //        print("passwordcon is \(self.passwordConTextField.text)")
        user()
        
    }
    
    let userDefault = UserDefaults.standard
    func user() {
        
        userDefault.set(nameTextField.text, forKey: "userName")
        userDefault.set(emailTextField.text, forKey: "userEmail")
        userDefault.set(passwordTextField.text, forKey: "userPassword")
        userDefault.set(passwordConTextField.text, forKey: "userPasswordCon")
    }
    //用UserDefaults存錢
    func save(){
        UserDefaults.standard.set(200, forKey: "conins")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //一註冊就有錢
        save()
        print("123")
        
        //解析JSON，從95行的completeion(data)中的 data 傳入
        getData(from: "http://c86108bd.ngrok.io/api/register") { (data) in
//            print("Call API")
            
            let decoder = JSONDecoder()
            if let RegisterBodyData = try? decoder.decode(RegisterBodyData.self, from: data) {
                //下面搞混了，
                print(RegisterBodyData)
//                print(RegisterBodyData.name)
//                print(RegisterBodyData.email)
//                print(RegisterBodyData.password)
//                print(RegisterBodyData.password_confirmation)
            }
            if let RegisterSuccessResponse = try? decoder.decode(RegisterSuccessResponse.self, from: data) {
                print(RegisterSuccessResponse)
//                print(RegisterSuccessResponse.name)
//                print(RegisterSuccessResponse.result)
//                print(RegisterSuccessResponse.coin)
//                print(RegisterSuccessResponse.api_token)
               
            }
            
        }
        
    }
    //轉成data
    func getData(from urlString: String, completeion: @escaping (Data) -> Void) {
        // 判斷 urlString 是否能被轉成 Url，若無法則 return，不繼續後面的操作。
        guard let url = URL(string: urlString) else { return }
        let json = [
            "name": nameTextField,
            "email": emailTextField,
            "password": passwordTextField,
            "password_confirmation": passwordConTextField
        ]
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
