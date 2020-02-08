//
//  ViewController.swift
//  BinaryCalculator
//
//  Created by Jonah Lukin on 2/7/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var answerField: UITextField!
	
	@IBOutlet weak var divisionButton: UIButton!
	@IBOutlet weak var multiplicationButton: UIButton!
	@IBOutlet weak var subtractionButton: UIButton!
	@IBOutlet weak var additionButton: UIButton!
	@IBOutlet weak var equalsButton: UIButton!
	
	@IBOutlet weak var zeroButton: UIButton!
	@IBOutlet weak var oneButton: UIButton!
	
	var firstNum = ""
	var secondNum = ""
	var function = ""
	
	let model = CalculatorModel()
	
	@IBAction func onePressed() {
			
		if(self.answerField.text == "0") {
			
			self.answerField.text = "1"
			
		} else {
			
			self.answerField.text = self.answerField.text! + "1"
			
		}
	}
	
	@IBAction func zeroPressed() {
		
		if(self.answerField.text!.first == "1") {
			
			self.answerField.text = self.answerField.text! + "0"
			
		}

	}
	
	@IBAction func addPressed() {
		
		if(firstNum != "") {
			
			firstNum = self.answerField.text!
			
		} else {
			
			secondNum = self.answerField.text!
			
		}
		
		self.function = "+"
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func minusPressed() {
		
		if(firstNum != "") {
			
			firstNum = self.answerField.text!
			
		} else {
			
			secondNum = self.answerField.text!
			
		}
		
		self.function = "-"
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func divisionPressed() {
		
		if(firstNum != "") {
			
			firstNum = self.answerField.text!
			
		} else {
			
			secondNum = self.answerField.text!
			
		}
		
		self.function = "/"
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func timesPressed() {
		
		if(firstNum != "") {
			
			firstNum = self.answerField.text!
			
		} else {
			
			secondNum = self.answerField.text!
			
		}
		
		self.function = "x"
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func equalsPressed() {
		
		self.answerField.text = model.solve(firstNum, secondNum, function)
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

