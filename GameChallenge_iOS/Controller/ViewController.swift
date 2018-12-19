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
    
    
//    func getSignUpDataFromString(from urlString: String, completeion: @escaping (Data) -> Void) {
//        // 判斷 urlString 是否能被轉成 Url，若無法則 return，不繼續後面的操作。
//        guard let url = URL(string: urlString) else { return }
//
//        // 使用 URLSession.shared.data(with: url) 來獲取網址中的數據。
//        URLSession.shared.dataTask(with: url){ (data, response, error) in
//            // 如果 error 存在，印出錯誤訊息後，不接續後面操作。
//            if error != nil {
//                print(error!.localizedDescription)
//                return
//            }
//            // 檢查 data 是否存在，若是存在透過 compeletion 這個逃逸閉包（escaping clourse）將 data 傳遞出去。若是不存在則 return。
//            guard let data = data else { return }
//            completeion(data)
//
//            }.resume() // 別忘了加上 resume() 才會開始運作。
//    }
    

    
    
    
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


