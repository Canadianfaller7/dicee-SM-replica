//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //IBOutlet(interface builder) allows me to reference a UI element which are the elements in the Main.storyboard
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        // This makes the first dice 50% see through on the screen.
        diceImageView1.alpha = 0.8
        // To change the dice image when loaded type the name of the dice you want to change and do .image = and type image literal and you can select a new picture that will display at launch
        
        //WHO           WHAT    VALUE
        diceImageView2.alpha = 0.8
    }

    /* This is telling us that someone pressed the roll dice button and something needs to happen */
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //"let" makes it a constant var with an array inside so that it can't be changed ever again in the future
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ]// this is the image literal of the dice and then wrapped in [] to make it an Array
       
    // by adding this Int.random(in: 0...5) it makes it so it takes a random pic 0-5 which is the dice "numbers" 1-6 and will keep changing them randomly without ever ending becuase it only ranges from 0-5 and won't go over
        diceImageView1.image = diceArray.randomElement()
    //doing the .randomElement() is a simpler way of doing the [Int.random(in: 0...5) but does the same thing
        diceImageView2.image = diceArray.randomElement()
     
        //leftDiceNumber = leftDiceNumber + 1
// can use if wanted ->//  leftDiceNumber += 1
        //rightDiceNumber = rightDiceNumber -1
// can use if wanted  -> //  rightDiceNumber -= 1
        
    }
    let diceArray = [ #imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix") ]
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()

    }
    
}

