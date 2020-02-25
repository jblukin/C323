//
//  Model.swift
//  Guessing Game
//
//  Created by Jonah Lukin on 2/11/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import Foundation

class Model {
	
	var currentNum: Int
	
	var rand = Int(arc4random_uniform(20))
	
	init() {
		
		self.currentNum = 0
		
	}
	
	func getGuess() -> String {
		
		return String(currentNum)
		
	}
	
}
