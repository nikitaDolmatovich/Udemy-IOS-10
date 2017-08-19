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
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseValue), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnPausePressed(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func btnMinusPressed(_ sender: Any) {
        var value = getValue()
        
        if value > 10 {
            value -= 10
            labelValue.text = String(value)
        }
    }
    
    @IBAction func btnPlusPressed(_ sender: Any) {
        var value = getValue()
        
        if value < 210  && value < 200 {
            value += 10
            labelValue.text = String(value)
        }
    }
    
    @IBAction func btnResetPressed(_ sender: Any) {
        let startValue = 210
        labelValue.text = String(startValue)
    }
    
    func getValue() -> Int {
        
        return Int(labelValue.text!)!
    }
    
    func decreaseValue() {
        var value = getValue()
        
        if value > 0 {
            value -= 1
            labelValue.text = String(value)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseValue), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

