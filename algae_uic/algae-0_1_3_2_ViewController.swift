//
//  algae-0_1_3_2_ViewController.swift
//  algae_uic
//
//  Created by Elijah Mendez on 3/28/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import UIKit

var list2 = ["Can HAB make you sick",
             "What are symptoms of HAB?",
             "Who to contact for HAB health concerns",]

class algae_0_1_3_2_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list2.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list2[indexPath.row]
        cell.textLabel?.font = UIFont(name:"Avenir light", size:16)
        
        return(cell)
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


