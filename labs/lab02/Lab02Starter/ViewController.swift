//
//  ViewController.swift
//  Lab02Starter
//
//  Created by Mitja Hmeljak on 2020-01-09.
//  Copyright © 2020 C323 / Spring 2020. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myFabulousLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myFabulousLabel.text = "Hello World!"
        // Do any additional setup after loading the view, typically from a nib.
    }


}

