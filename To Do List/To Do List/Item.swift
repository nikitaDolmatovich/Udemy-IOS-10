//
//  Item.swift
//  To Do List
//
//  Created by Nikita on 24.08.17.
//  Copyright © 2017 SolIT. All rights reserved.
//

import Foundation

class Item {

    private var items = [String]()
    
    public func addItem(item: String) {
    
        items.append(item)
        saveItem()
        
    }
    
    public func deleteItem(item: String) {
    
        let index = getIndexItem(item: item)
        
        items.remove(at: index)
        saveItem()
    
    }
    
    private func getIndexItem(item: String) -> Int {
    
        var index = 0
        for itemObject in items {
        
            if item == itemObject {
            
                return index
            }
        
            index += 1
        }
        
        return index
    
    }
    
    private func saveItem() {
    
        UserDefaults.standard.set(items, forKey: "items")
    
    }
}
