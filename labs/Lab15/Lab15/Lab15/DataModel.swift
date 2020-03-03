//
//  Model.swift
//  Lab15
//
//  Created by Jonah Lukin on 2/27/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import Foundation

class DataModel {
	
	var data: [Item] = [Item("Prepare for Class","Education", Date(timeIntervalSinceNow: TimeInterval(0)), false)]
	
	//add reminder to data array
	func addReminder(_ content: String, _ category: String, _ date: Date, _ done: Bool) {
		
		data.append(Item(content, category, date, done))
		
	}
	
	//getter
	func getReminder() -> [Item] {
		
		return data
		
	}
	
}

//Separate class to define reminder item

class Item {
	
	var content: String
	var category: String
	var date: Date
	var done: Bool
	
	init(_ cont: String, _ cate: String, _ due: Date, _ flag: Bool) {
		
		content = cont
		category = cate
		date = due
		done = flag
		
	}
}
