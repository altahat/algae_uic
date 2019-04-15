//
//  algae_0_1_1_3_ViewController.swift
//  algae_uic
//
//  Created by Jacqueline Barragan on 4/13/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import UIKit

class algae_0_1_1_3_ViewController: UIViewController{
    
    @IBOutlet weak var PO4Concentration: UITextField!
    override func viewDidLoad(){
        super.viewDidLoad()
        self.hidesKeyboard()
    }
}

extension UIViewController{
    func hidesKeyboard() {
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKieyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKieyboard () {
        view.endEditing(true)
    }
}
