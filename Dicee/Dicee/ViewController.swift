//
//  ViewController.swift
//  Dicee
//
//  Created by Jamario Davis on 5/18/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleImg: UIImageView!
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    
    //detect Shake Gesture
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        let diceImage = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        diceImage1.image = diceImage.randomElement()
        diceImage2.image = diceImage.randomElement()
    }
}

