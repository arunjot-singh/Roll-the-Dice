//
//  DiceViewController.swift
//  Roll the Dice
//
//  Created by Arunjot Singh on 1/8/16.
//  Copyright © 2016 Arunjot Singh. All rights reserved.
//

import Foundation
import UIKit

class DiceViewController : UIViewController {
    
    var firstValue : Int?
    var secondValue : Int?


    @IBOutlet weak var firstDie: UIImageView!
    @IBOutlet weak var secondDie: UIImageView!
    
    
    override func viewWillAppear(animated: Bool) {
        
        if let firstValue = self.firstValue {
            self.firstDie.image = UIImage(named: "d\(firstValue)")
        } else {
            self.firstDie.image = nil;
        }
        
        if let secondValue = self.secondValue {
            self.secondDie.image = UIImage(named: "d\(secondValue)")
        } else {
            self.secondDie.image = nil;
        }
        
        self.firstDie.alpha = 0
        self.secondDie.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.1) {
            self.firstDie.alpha = 1
            self.secondDie.alpha = 1
        }
    }
    
    
    func imageForValue(value: Int?) -> UIImage? {
        return nil
    }

    
    @IBAction func dismiss(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
