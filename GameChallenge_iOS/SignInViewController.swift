//
//  SignInViewController.swift
//  GameChallenge_iOS
//
//  Created by 柏呈 on 2018/12/18.
//  Copyright © 2018 柏呈. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func signInButton(_ sender: UIButton) {
        print("Name is \(nameTextField.text)")
        print("Password is \(passwordTextField.text)")
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
