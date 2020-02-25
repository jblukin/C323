//
//  ViewController.swift
//  Guessing Game
//
//  Created by Jonah Lukin on 1/28/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var appDelegate: AppDelegate?
	
	var model: Model?

	
	@IBOutlet weak var gameTitle: UILabel!
	
	
	@IBOutlet weak var userGuess: UILabel!
	
	
	@IBOutlet weak var randomAnswer: UILabel!
	
	@IBOutlet weak var userInput: UITextField!
	
	@IBOutlet weak var submitButton: UIButton!
	
	@IBAction func submit() {
		
		model!.currentNum = Int(userInput.text!)!
		
		userGuess.text = String(model!.currentNum)
		
		if(Int(userGuess.text!) == model!.rand) {
			
			randomAnswer.text = String(model!.rand)
			
		}
		
	}
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		
		self.appDelegate = (UIApplication.shared.delegate! as! AppDelegate)
		
		self.model = self.appDelegate?.model
		
	}

}

