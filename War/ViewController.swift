//
//  ViewController.swift
//  War
//
//  Created by Alexander Wu on 2015-07-16.
//  Copyright (c) 2015 Alexander Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playButtonImageView: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    
    var cardNames:[String] = ["card1","card2","card3","card4","card5","card6","card7","card8","card9","card10","card11","card12","card13"]
    var playerScoreVar:Int = 0
    var enemyScoreVar:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        //playButtonImageView.setTitle("Play Round", forState: UIControlState.Normal)
        
        //arc4random basically chooses a random integer between 0 and 12
        var firstRandomNb:Int = Int(arc4random_uniform(13))
        var secondRandomNb:Int = Int(arc4random_uniform(13))
        
        //different method
        //var firstRandomCard:String = String(format: "card%i", firstRandomNb)
        //var secondRandomCard:String = String(format: "card%i", secondRandomNb)
        
        //firstcardimageview's image is set to the image named by the first random card
        self.firstCardImageView.image = UIImage(named: self.cardNames[firstRandomNb])
        self.secondCardImageView.image = UIImage(named: self.cardNames[secondRandomNb])
        
        if firstRandomNb > secondRandomNb
        {
            //first player is the winner
            playerScoreVar += 1
            self.playerScore.text = String(playerScoreVar)
        }
        else if firstRandomNb == secondRandomNb
        {
            //tie
            //does nothing
        }
        else
        {
            //second player is the winner
            enemyScoreVar += 1
            self.enemyScore.text = String(enemyScoreVar)
        }
        
    }

}

