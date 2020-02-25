//
//  ViewController.swift
//  Guessing Game
//
//  Created by Jonah Lukin on 1/28/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet weak var gameTitle: UILabel!
	
	
	@IBOutlet weak var userGuess: UILabel!
	
	
	@IBOutlet weak var randomAnswer: UILabel!
	
	@IBOutlet weak var lowerButton: UIButton!
	
	
	@IBOutlet weak var higherButton: UIButton!
	
	var rand = Int(arc4random_uniform(20))
	
	var guess: UInt32 = 0
	
	var hold: UInt32 = 0
	
	
	@IBAction func lowerGuess(_ sender: Any) {
		
		hold = guess
		
		guess = arc4random_uniform((hold))
		
		userGuess.text = String(guess)
		
		if(Int(userGuess.text!) == rand) {
		
			randomAnswer.text = String(rand)
		
		}
		
	}
	
	@IBAction func higherGuess(_ sender: Any) {
		
		hold = guess
		
		guess = hold + arc4random_uniform(20-hold)
		
		userGuess.text = String(guess)
		
		if(Int(userGuess.text!) == rand) {
		
			randomAnswer.text = String(rand)
		
		}
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

}

