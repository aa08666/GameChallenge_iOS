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
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    @IBOutlet weak var showMyCard: UIImageView!
    
    @IBAction func tellMeSomething(_ sender: UIButton) {
        showAnswer()
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


