//
//  Item.swift
//  To Do List
//
//  Created by Nikita on 24.08.17.
//  Copyright © 2017 SolIT. All rights reserved.
//

import Foundation

class Item {

    private var items = Array<String>()
    
    public func addItem(item: String) {
    
        items.append(item)
        saveItem()
    }
    
    public func deleteItem(index: Int) {
        
        items.remove(at: index)
        saveItem()
    }
    
    public func getCount() -> Int {
    
        return items.count
    }
    
    public func getItems() -> Array<String> {
    
        items = readData()
        return items
    }
    
    private func readData() -> Array<String> {
    
        return UserDefaults.standard.object(forKey: "items") as! Array<String>
    }
    
    
    private func saveItem() {
    
        UserDefaults.standard.set(items, forKey: "items")
    
    }
}
