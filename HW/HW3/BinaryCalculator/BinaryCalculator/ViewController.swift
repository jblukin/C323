//
//  ViewController.swift
//  BinaryCalculator
//
//  Created by Jonah Lukin (jlukin@iu.edu) on 2/7/20.
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
	
	@IBOutlet weak var clearButton: UIButton!
	@IBOutlet weak var posNegButton: UIButton!
	
	
	@IBOutlet weak var memoryClearButton: UIButton!
	@IBOutlet weak var memoryRecallButton: UIButton!
	@IBOutlet weak var memoryAddButton: UIButton!
	@IBOutlet weak var memorySubtractButton: UIButton!
	
	var firstNum = " "
	var secondNum = " "
	var function = " "
	var memoryNum = "0"
	
	let model = CalculatorModel()
	
	@IBAction func onePressed() {
			
		if(self.answerField.text == "0") {
			
			self.answerField.text = "1"
			
		} else if(self.answerField.text!.contains("-0")) {
			
			self.answerField.text = "-1"
			
		} else {
			
			self.answerField.text = self.answerField.text! + "1"
			
		}
	}
	
	@IBAction func zeroPressed() {
		
		if(self.answerField.text!.first == "1" || self.answerField.text!.contains("-1")) {
			
			self.answerField.text = self.answerField.text! + "0"
			
		}

	}
	
	@IBAction func addPressed() {
		
		if(self.firstNum.contains(" ")) {
			
			self.firstNum = self.answerField.text!
			
		} else if(self.secondNum.contains(" ")) {
			
			self.secondNum = self.answerField.text!
			
		} else {
			
			self.firstNum = self.answerField.text!
			
			self.secondNum = " "
			
		}
		
		self.function = "+"
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func minusPressed() {
		
		if(self.firstNum.contains(" ")) {
			
			self.firstNum = self.answerField.text!
			
		} else if(self.secondNum.contains(" ")) {
			
			self.secondNum = self.answerField.text!
			
		} else {
			
			self.firstNum = self.answerField.text!
			
			self.secondNum = " "
			
		}
		
		self.function = "-"
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func divisionPressed() {
		
		if(self.firstNum.contains(" ")) {
			
			self.firstNum = self.answerField.text!
			
		}else if(self.secondNum.contains(" ")) {
			
			self.secondNum = self.answerField.text!
			
		} else {
			
			self.firstNum = self.answerField.text!
			
			self.secondNum = " "
			
		}
		
		self.function = "/"
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func timesPressed() {
		
		if(self.firstNum.contains(" ")) {
			
			self.firstNum = self.answerField.text!
			
		} else if(self.secondNum.contains(" ")) {
			
			self.secondNum = self.answerField.text!
			
		} else {
			
			self.firstNum = self.answerField.text!
			
			self.secondNum = " "
			
		}
		
		self.function = "x"
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func equalsPressed() {
		
		if(self.secondNum.contains(" ")) {
			
			self.secondNum = self.answerField.text!
			
		}
	
		self.answerField.text = self.model.solve(self.firstNum, self.secondNum, self.function)
		
	}
	
	@IBAction func clear() {
		
		self.firstNum = " "
		
		self.secondNum = " "
		
		self.answerField.text = "0"
		
	}
	
	@IBAction func posNegSwitch() {
		
		var string = self.answerField.text!
	 if(self.answerField.text!.contains("-")) {
			
			string = String(string.dropFirst())
			
		self.answerField.text = string
		
	} else {
		
		self.answerField.text = "-" + self.answerField.text!
		
		}
		
	}
	
	@IBAction func memoryClear() {
		
		self.memoryNum = "0"
		
	}
	
	@IBAction func memoryRecall() {
		
		self.answerField.text = self.memoryNum
		
	}
	
	@IBAction func memoryAdd() {
		
		self.memoryNum = self.model.solve(self.memoryNum, self.answerField.text!, "+")
		
	}
	
	@IBAction func memorySubtract() {
		
		self.memoryNum = self.model.solve(self.memoryNum, self.answerField.text!, "-")
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

