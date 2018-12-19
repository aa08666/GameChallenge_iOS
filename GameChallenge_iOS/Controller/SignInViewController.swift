//
//  SignInViewController.swift
//  GameChallenge_iOS
//
//  Created by 柏呈 on 2018/12/18.
//  Copyright © 2018 柏呈. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var signInNameText: UITextField!
    
    @IBOutlet weak var signInPasswordText: UITextField!
    
    @IBAction func signInButton(_ sender: UIButton) {
        //        print("Name is \(nameTextField.text)")
        //        print("Password is \(passwordTextField.text)")
        // UserDefaults.(standard).value set值的時候加standard，取值就要加
        if let userName = UserDefaults.standard.value(forKey: "userName") as? String {
            if signInNameText.text == userName {
                print("correct")
            }else{
                print("wrong")
            }
        }
        
        if let userPassword = UserDefaults.standard.value(forKey: "userPassword") as? String {
            if signInPasswordText.text == userPassword {
                print("correct")
            }else{
                print("wrong")
            }
        }
        print(UserDefaults.standard.value(forKey: "userName"))
        print(UserDefaults.standard.value(forKey: "userPassword"))
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
//        APISystem.getData(json: dic) { (data) in
//            print(data)
//        }
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
