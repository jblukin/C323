//
//  HistoryViewController.swift
//  Guessing Game
//
//  Created by Jonah Lukin on 2/4/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
	
	var appDelegate: AppDelegate?
	
	var model: Model?

    override func viewDidLoad() {
        super.viewDidLoad()
		
		self.appDelegate = (UIApplication.shared.delegate! as! AppDelegate)
		
		self.model = self.appDelegate?.model
		
		addGuess()

        // Do any additional setup after loading the view.
    }
    
	@IBOutlet weak var guessHistory: UITextView!
	
	
	func addGuess() {
		
		guessHistory.text? += model!.getGuess() + " "
		
	}
	
    /*
	// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
