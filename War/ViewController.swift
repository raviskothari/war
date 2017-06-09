//
//  ViewController.swift
//  War
//
//  Created by Ravi Kothari on 5/25/17.
//  Copyright © 2017 Ravi Kothari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore:Int = 0
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore:Int = 0
    
    let cardNames = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender: UIButton) {
        
        //Randomize left number from 2 - 10
        let leftNumber:Int = Int(arc4random_uniform(13))
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        //Randomize right number from 2 - 10
        let rightNumber:Int = Int(arc4random_uniform(13))
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        //Compare the card numbers
        if leftNumber > rightNumber {
            //Left card wins
            //Increment the score
            leftScore += 1
            //Update the label
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber == rightNumber {
            //Tie
        } else {
            //Right card wins
            //Increment the score
            rightScore += 1
            //Update the label
            rightScoreLabel.text = String(rightScore)
        }
    }
}

