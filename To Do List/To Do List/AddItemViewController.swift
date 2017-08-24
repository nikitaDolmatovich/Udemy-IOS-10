//
//  SecondViewController.swift
//  To Do List
//
//  Created by Nikita on 24.08.17.
//  Copyright © 2017 SolIT. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    
    @IBOutlet weak var textFieldItem: UITextField!
    private var items = [String]()

    @IBAction func btnAddTapped(_ sender: Any) {
        
    }
    
    func addItem(item: String) {
        
        if let itemObject = textFieldItem.text {
            
            items.append(itemObject)
            saveItem()
            
        } else {
        
            textFieldItem.placeholder = "Enter item"
        
        }
    
    }
    
    private func saveItem() {
        
        UserDefaults.standard.set(items, forKey: "items")
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

