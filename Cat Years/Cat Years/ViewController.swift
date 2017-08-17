//
//  ViewController.swift
//  Cat Years
//
//  Created by Nikita on 17.08.17.
//  Copyright © 2017 SolIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textFieldAge: UITextField!
    @IBOutlet weak var labelAge: UILabel!

    @IBAction func btnSubmitTapped(_ sender: Any) {
        labelAge.text = String(getAgeInCatYears(age: Int(textFieldAge.text!)!))
    }
    
    func getAgeInCatYears(age : Int) -> Int {
        let format = 7
        
        return age * format
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

