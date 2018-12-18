//
//  CoinsViewController.swift
//  GameChallenge_iOS
//
//  Created by 柏呈 on 2018/12/18.
//  Copyright © 2018 柏呈. All rights reserved.
//

import UIKit

class CoinsViewController: UIViewController {
    
//    let conDefaults = UserDefaults.standard
//    var coins = 200
//    let coinsKey = "conins"
    
//    func save(){
//        //save
//        conDefaults.set(coins, forKey: coinsKey)
//        //get
//        //  conDefaults.integer(forKey: coinsKey)
//    }
    
//    func use(){
//        var a = conDefaults.integer(forKey: coinsKey)
//        a -= 10
//        conDefaults.set(a, forKey: coinsKey)
//        
//    }
//    
    
    @IBOutlet weak var coinsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let coins = UserDefaults.standard.integer(forKey: "conins")
        coinsLabel.text = "abc is \(coins)"
//        print(UserDefaults.standard.string(forKey: "userName"))
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
