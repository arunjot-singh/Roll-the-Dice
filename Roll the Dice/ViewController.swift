//
//  ViewController.swift
//  Roll the Dice
//
//  Created by Arunjot Singh on 1/8/16.
//  Copyright © 2016 Arunjot Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    func randomDiceValue() -> Int {
        let randomValue = 1 + arc4random() % 6
        return Int(randomValue)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "RollDice" {
            let controller = segue.destinationViewController as!
            DiceViewController
            controller.firstValue = self.randomDiceValue()
            controller.secondValue = self.randomDiceValue()
        }        
    }
    
    
    @IBAction func RollDice(sender: UIButton) {
        performSegueWithIdentifier("RollDice", sender: self)
    }

}

