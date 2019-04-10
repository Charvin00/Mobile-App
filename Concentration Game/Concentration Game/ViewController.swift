//
//  ViewController.swift
//  Concentration Game
//
//  Created by Charvin on 4/4/19.
//  Copyright © 2019 Shen-Northeastern University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // add a count
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }

    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃", "👻", "🤓", "😇"]
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1;
        if let cardNumber = cardButtons.lastIndex(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else {
            print("chosen card was not in cardButtons")
        }
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard(withEmoji: \(emoji))")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

