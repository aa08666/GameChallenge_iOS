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
//        nameTextField.text = ""
//        emailTextField.text = ""
//        passwordTextField.text = ""
//        passwordConTextField.text = ""
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
        
    }
    



}
