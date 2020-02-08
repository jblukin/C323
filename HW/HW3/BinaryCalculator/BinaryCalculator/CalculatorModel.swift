//
//  CalculatorModel.swift
//  BinaryCalculator
//
//  Created by Jonah Lukin on 2/7/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import Foundation

class CalculatorModel {
	
	func solve(_ first:String, _ second:String, _ function:String) -> String {
		
		var ans = 0
		
		var count = 0
		
		var converted = ""
		
		if(function == "+") {
			
			ans = add(first, second)
			
		} else if(function == "x") {
			
			ans = multiply(first, second)
			
		} else if(function == "-") {
			
			ans = minus(first, second)
			
		} else if(function == "/") {
			
			ans = divide(first, second)
			
		}
		
		for _ in 0...ans.bitWidth {
			
			count+=1
			
			if((ans-(2^(ans.bitWidth - count))) >= 0) {
				
				converted += "1"
				
				ans = ans-(2^(ans.bitWidth - count))
				
			} else if(converted.first != "0"){
				
				converted += "0"
				
			}
		
	}
		return converted
		
	}
	
	func add(_ first:String, _ second:String) -> Int {
		
		var count = 0
		
		var ans = 0
		
		for i in first {
			
			count+=1
			 ans += (i.wholeNumberValue!)*(2^first.count-count)
			
		}
		
		count = 0
		
		for i in second {
			
			count+=1
			ans += (i.wholeNumberValue!)*(2^first.count-count)
			
		}
		
		return ans
		
	}
	
	func multiply(_ first:String, _ second:String) -> Int {
		
		var count = 0
		
		var numOne = 0
		var numTwo = 0
		
		for i in first {
			
			count+=1
			 numOne += (i.wholeNumberValue!)*(2^first.count-count)
			
		}
		
		count = 0
		
		for i in second {
			
			count+=1
			numTwo += (i.wholeNumberValue!)*(2^first.count-count)
			
		}
		
		return (numOne*numTwo)
		
	}
	
	func minus(_ first:String, _ second:String) -> Int {
		
		var count = 0
		
		var numOne = 0
		var numTwo = 0
		
		for i in first {
			
			count+=1
			 numOne += (i.wholeNumberValue!)*(2^first.count-count)
			
		}
		
		count = 0
		
		for i in second {
			
			count+=1
			numTwo += (i.wholeNumberValue!)*(2^first.count-count)
			
		}
		
		return (numOne-numTwo)
		
	}
	
	func divide(_ first:String, _ second:String) -> Int {
		
		var count = 0
		
		var numOne = 0
		var numTwo = 0
		
		for i in first {
			
			count+=1
			 numOne += (i.wholeNumberValue!)*(2^first.count-count)
			
		}
		
		count = 0
		
		for i in second {
			
			count+=1
			numTwo += (i.wholeNumberValue!)*(2^first.count-count)
			
		}
		
		return (numOne/numTwo)
		
	}
}
