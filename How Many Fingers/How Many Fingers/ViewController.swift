//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Nikita on 18.08.17.
//  Copyright © 2017 SolIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldNumber: UITextField!
    @IBOutlet weak var labelAnswer: UILabel!

    @IBAction func btnGuessTapped(_ sender: Any) {
        let number = textFieldNumber.text
        let ranNumber = String(getRandomNumber())
        
        if number == ranNumber {
            labelAnswer.text = "You are right!"
        
        } else {
            labelAnswer.text = "You are wrong! It was " + ranNumber
        
        }
    }
    
    func getRandomNumber() -> Int {
        
        return Int(arc4random_uniform(6))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

