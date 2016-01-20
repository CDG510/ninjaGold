//
//  ViewController.swift
//  ninjaGold
//
//  Created by Christian Gonzalez on 1/8/16.
//  Copyright © 2016 Christian Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var totalGold: UILabel!
//
    
    @IBOutlet weak var FarmMessage: UILabel!

    @IBOutlet weak var CaveMessage: UILabel!
    
    @IBOutlet weak var HouseMessage: UILabel!
    
    @IBOutlet weak var CasinoMessage: UILabel!
    
    var myGold = 0
    var goldChange = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         clearAll()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func MoneyButtonPressed(sender: UIButton) {
        clearAll()
        if sender.tag == 1 {
            goldChange = (Int(arc4random_uniform(20) + 10))
            FarmMessage.text = "You earned \(goldChange)"
            
           myGold += goldChange
            totalGold.text = String(myGold)
            
        }
        else if sender.tag == 2 {
            goldChange = (Int(arc4random_uniform(10) + 5))
            CaveMessage.text = "You earned \(goldChange)"
            
            myGold += goldChange
            totalGold.text = String(myGold)
        }
        else if sender.tag == 3 {
            goldChange = (Int(arc4random_uniform(5) + 2))
            HouseMessage.text = "You earned \(goldChange)"
            
            myGold += goldChange
            totalGold.text = String(myGold)
        }
        else if sender.tag == 4 {
            let chance = Int(arc4random_uniform(1))
            if chance == 1 {
                goldChange = (Int(arc4random_uniform(50)))
                CasinoMessage.text = "You won \(goldChange)"
                myGold += goldChange
                totalGold.text = String(myGold)
            }
            else {
                
                goldChange = (Int(arc4random_uniform(50)))
                CasinoMessage.text = "You lost - \(goldChange)"
                myGold -= goldChange
                totalGold.text = String(myGold)
            }
            
        }
        
        else {
            myGold = 0;
            totalGold.text = String(myGold)
        }
        
    }
    
    func clearAll() {
        FarmMessage.text = "";
        CaveMessage.text = "";
        HouseMessage.text = "";
        CasinoMessage.text = "";
    }
    
    

}

