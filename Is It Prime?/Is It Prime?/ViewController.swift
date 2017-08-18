//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Nikita on 18.08.17.
//  Copyright © 2017 SolIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldNumber: UITextField!
    @IBOutlet weak var labelAnswer: UILabel!

    @IBAction func btnTapped(_ sender: Any) {
        if let empty = textFieldNumber.text {
            
            if let number = Int(empty) {
                
                if isPrime(number: number) {
                    labelAnswer.text = String(number) + " It's prime"
                
                } else {
                    labelAnswer.text = String(number) + " is not prime"
                
                }
            
            } else {
                labelAnswer.text = "Enter a positive whole number"
            
            }
        
        } else {
            labelAnswer.text = "Enter a whole number"
        
        }
        
    }
    
    private func isPrime(number : Int) -> Bool {
        let first = 1
        let second = 2
        
        var i = 2
        while i < number {
            if number == first || number == second {
                return true
            
            } else if number % i == 0 {
                return false
            
            }
            
            i += 1
        }
        
        return true
    
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

