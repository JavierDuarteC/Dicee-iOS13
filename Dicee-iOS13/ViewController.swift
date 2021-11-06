//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    var firstRoll = true
    
    let diceFaces = [UIImage(imageLiteralResourceName: "DiceOne"),
                     UIImage(imageLiteralResourceName: "DiceTwo"),
                     UIImage(imageLiteralResourceName: "DiceThree"),
                     UIImage(imageLiteralResourceName: "DiceFour"),
                     UIImage(imageLiteralResourceName: "DiceFive"),
                     UIImage(imageLiteralResourceName: "DiceSix")]
    
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.isHidden = true
        diceImageView2.isHidden = true
    }
    
    @IBAction func rollButtonTap(_ sender: Any) {
        print("Button got tapped")
        
        if(firstRoll){
            firstRoll = false
            rollButton.setTitle("Again!!", for: .normal)
            diceImageView1.isHidden = false
            diceImageView2.isHidden = false
        }
        
        leftDiceNumber=Int.random(in: 0...5)
        rightDiceNumber=Int.random(in: 0...5)
        
        diceImageView1.image = diceFaces[leftDiceNumber]
        diceImageView2.image = diceFaces[rightDiceNumber]
    }
}

