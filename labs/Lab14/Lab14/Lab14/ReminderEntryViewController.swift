//
//  ReminderEntryViewController.swift
//  Lab14
//
//  Created by Jonah Lukin on 2/27/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class ReminderEntryViewController: UIViewController {
	
	@IBOutlet weak var reminderInput: UITextField!
	@IBOutlet weak var categoryInput: UITextField!
	
	
	@IBOutlet weak var dateInput: UIDatePicker!
	
	
	@IBAction func addReminder(_ sender: Any) {
		
		//AppDelegate Reference
		let AppDelegate = UIApplication.shared.delegate as! AppDelegate
		
		//Model Reference
		let model = AppDelegate.model
		
		model.addReminder(reminderInput.text ?? " ", categoryInput.text ?? " ", dateInput.date, false)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}


}

