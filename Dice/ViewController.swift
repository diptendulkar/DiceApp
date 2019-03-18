//
//  ViewController.swift
//  Dice
//
//  Created by Diptendu Das on 04/12/2018.
//  Copyright © 2018 Diptendu Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    
    @IBOutlet weak var diceImgeView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
//        let square  = UIView( frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 50))
//        square.backgroundColor = UIColor.red
//        self.view.addSubview(square)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
       
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        
        diceImgeView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        print(randomDiceIndex2)
    }
    
}

