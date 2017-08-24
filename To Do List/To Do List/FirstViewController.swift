//
//  FirstViewController.swift
//  To Do List
//
//  Created by Nikita on 24.08.17.
//  Copyright © 2017 SolIT. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var item = Item()
    private var items = Array<String>()
    @IBOutlet weak var table: UITableView!

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return item.getCount()
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        items = item.getItems()
        cell.textLabel?.text = items[indexPath.row]
        
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        items = item.getItems()
        table.reloadData()
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
        
            item.deleteItem(index: indexPath.row)
            table.reloadData()
        }
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

