//
//  algae-0_1_3_ViewController.swift
//  algae_uic
//
//  Created by Elijah Mendez on 3/27/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import UIKit

var list = ["Can the toxin be removed?",
            "What about fish?",
            "What is a harfmul algae bloom(HAB)?",
            "What are symptoms of toxic algae",
            "What are the 7 major types of algae?",
            "Which toxin is relevant in HAB?",
            "Who can I talk to with for more questions?",
            "Why do Cyanobacteria bloom?",
            "Why is phosphorus important?",
            "Will HABs increase with climate change?",]

class algae_0_1_3_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
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

