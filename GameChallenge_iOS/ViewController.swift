//
//  ViewController.swift
//  GameChallenge_iOS
//
//  Created by 柏呈 on 2018/12/17.
//  Copyright © 2018 柏呈. All rights reserved.
//

import UIKit
import GameKit


class ViewController: UIViewController {
    
//    let a = URLSession.shared.dataTask(with: <#T##URLRequest#>)
//    let b = URLRequest(url: <#T##URL#>)
//    let c = URL(fileURLWithPath: <#T##String#>)
    
    
    override var prefersStatusBarHidden: Bool{
        return true
    }


    
    
    
    
    
    
    @IBOutlet weak var showMyCard: UIImageView!
    
    @IBAction func tellMeSomething(_ sender: UIButton) {
        showAnswer()
    }
    
    @IBOutlet weak var myBackgroundImage: UIImageView!
    
    @IBAction func imageChange(_ sender: UISwitch) {
        if sender.isOn == true {
            myBackgroundImage.image = UIImage(named: "Gu")
        }else{
            myBackgroundImage.image = UIImage(named: "hearthstone")
        }
    }
    
    func showAnswer(){
        if showMyCard.isHidden == true{
            //show me the answer
            //1.make a random number 1~6
            let answer = GKRandomSource.sharedRandom().nextInt(upperBound: 6) + 1
            
            //2.change image
            showMyCard.image = UIImage(named: "\(answer)")
            showMyCard.isHidden = false
            
          
            
        }else{
            //hide image
            showMyCard.isHidden = true
        }
        
        
    }
    let conDefaults = UserDefaults.standard
    let coinsKey = "conins"
    
    //玩一次錢就少10元
    func use(){
        var a = conDefaults.integer(forKey: coinsKey)
        a -= 10
        conDefaults.set(a, forKey: coinsKey)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        use()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
}


