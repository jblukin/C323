//
//  ViewController.swift
//  Flashcards
//
//  Created by Jonah Lukin on 1/23/20.
//  Copyright © 2020 C323 / Spring2020. All rights reserved.
//

import UIKit

class Lab4ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionButton: UIButton!
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    
    var flag = false
    
    @IBAction func showQuestion(_ sender: Any) {
        
        questionLabel.text = "How old are you?"
        answerLabel.text = "Try Guessing..."
        
        flag = true
        
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        
        if(flag) {
        answerLabel.text = "I am almost 6 years old!"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
