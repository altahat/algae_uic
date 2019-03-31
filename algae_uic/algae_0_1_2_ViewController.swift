//
//  ViewController.swift
//  Mui_Assignment4
//
//  Created by GabrielMui on 3/3/19.
//  Copyright © 2019 GabrielMui. All rights reserved.
//

import UIKit
import Foundation

class algae_0_1_2_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var itemStore: ItemStore!
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

class ItemStore {
    
    var allItems: [Item] = []
    
    init() {
        for i in 0..<9 {
            createItem(i)
        }
    }
    
    @discardableResult func createItem(_ number: Int) -> Item {
        let newItem = Item(counter: number)
        
        allItems.append(newItem)
        
        return newItem
    }
    
}

class Item: NSObject {
    
    var name: String
    
    init(name: String) {
        self.name = name
        super.init()
    }
    
    convenience init(counter: Int ) {
        switch counter {
        case 0:
            
            self.init(name: "10/15/2018                        Lake Michigan")
        case 1:
            self.init(name: "10/14/2018                        Lake by my house")
        case 2:
            self.init(name: "10/13/2018                        Uncle Bob’s Pond")
        case 3:
            self.init(name: "10/12/2018                        Small Creek")
        case 4:
            self.init(name: "10/11/2018                        Stinky Lagoon 02")
        case 5:
            self.init(name: "10/10/2018                        Stinky Lagoon")
        case 6:
            self.init(name: "10/09/2018                        Swan Pond")
        case 7:
            self.init(name: "10/08/2018                        Fox Lake")
        case 8:
            self.init(name: "10/06/2018                        Lake Chaubunagung")
        default:
            self.init(name: "Null")
        }
    }
}
