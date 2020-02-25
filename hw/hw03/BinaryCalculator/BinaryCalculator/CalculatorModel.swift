//
//  CalculatorModel.swift
//  BinaryCalculator
//
//  Created by Jonah Lukin (jlukin@iu.edu) on 2/7/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import Foundation

class CalculatorModel {
	
	func solve(_ first:String, _ second:String, _ function:String) -> String {
		
		var ans = 0
		
		var count = 0
		
		var converted = ""
		
		var firstC = 0
		
		var secondC = 0
		
		var power = 0
		
		var firstNeg = false
		
		var secondNeg = false
		
		var finalNeg = false
		
		var firstNum = first
		
		var secondNum = second
		
		if(first.contains("-")) {
			
			firstNeg = true
			
			firstNum = String(first.dropFirst())
			
		}
		
		if(second.contains("-")) {
			
			secondNeg = true
			
			secondNum = String(second.dropFirst())
			
		}
		
		count = firstNum.count-1

		for i in firstNum {
			
			power = Int(pow(Double(2), Double(count)))
			
			firstC += (power * i.wholeNumberValue!)
			
			count-=1
			
		}
		
		count = secondNum.count-1
		
		for i in secondNum {
			
			power = Int(pow(Double(2), Double(count)))
				
				secondC += (power * i.wholeNumberValue!)
			
			count-=1
			
		}
		
		if(firstNeg) {
			
			firstC = firstC - (2*firstC)
			
		}
		
		if(secondNeg) {
			
			secondC = secondC - (2*secondC)
			
		}
		
		if(function.contains("+")) {
			
			ans = firstC + secondC
			
		} else if(function.contains("x")) {
			
			ans = firstC * secondC
			
		} else if(function.contains("-")) {
			
			ans = firstC - secondC
			
		} else if(function.contains("/")) {
			
			if(secondC != 0) {
				
			ans = firstC / secondC
				
			}
			
		}
		
		if(ans < 0) {
			
			ans = ans + (ans*2)
			
			finalNeg = true
		}
		
		while(ans > 0) {
			
			converted = String(ans%2) + converted
			
			ans = ans/2
		}
		
		if(converted.count == 0) {
			
			converted = "0"
			
		}
		
		if(finalNeg) {
			
			converted = "-" + converted
			
		}
		
		return converted
		
	}

}
