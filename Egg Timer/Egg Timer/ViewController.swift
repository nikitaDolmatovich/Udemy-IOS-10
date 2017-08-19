//
//  ViewController.swift
//  Egg Timer
//
//  Created by Nikita on 19.08.17.
//  Copyright © 2017 SolIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelValue: UILabel!
    var timer = Timer()

    @IBAction func btnPlayPressed(_ sender: Any) {
    }
    
    @IBAction func btnPausePressed(_ sender: Any) {
    }
    
    @IBAction func btnMinusPressed(_ sender: Any) {
    }
    
    @IBAction func btnPlusPressed(_ sender: Any) {
    }
    
    @IBAction func btnResetPressed(_ sender: Any) {
    }
    
    func getValue() -> Int {
        
        return Int(labelValue.text!)!
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

