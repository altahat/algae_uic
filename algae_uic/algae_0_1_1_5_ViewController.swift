//
//  algae_0_1_1_5_ViewController.swift
//  algae_uic
//
//  Created by Darmawan Truong on 4/14/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import UIKit

class algae_0_1_1_5_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func submitError(_ sender: UIButton) {
        
        let attributedString = NSAttributedString(string: "Whoops!", attributes: [
            NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold), //your font here
            NSAttributedString.Key.foregroundColor : UIColor(red:0.16, green:0.51, blue:0.51, alpha:1.0)
            ])
        let message = "You can’t calculate your data if you don’t have it all. Finish entering it all and then you can calculate."
        let ac = UIAlertController(title: title,
                                   message: message,
                                   preferredStyle: .alert)
        
        
        
        ac.setValue(attributedString, forKey: "attributedTitle")
        
        UIView.appearance(whenContainedInInstancesOf: [UIAlertController.self]).tintColor = UIColor(red:0.16, green:0.51, blue:0.51, alpha:1.0)
        
        
        
        let deleteAction = UIAlertAction(title: "OK", style: .cancel, handler: { (action) -> Void in})
        
        ac.addAction(deleteAction)
        present(ac, animated: true, completion: nil)
    }
}
