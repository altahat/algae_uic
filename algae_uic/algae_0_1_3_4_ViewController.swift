//
//  algae_0_1_3_4_ViewController.swift
//  algae_uic
//
//  Created by Asha Whitehorne on 4/14/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import UIKit

class algae_0_1_3_4_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

}
class ViewController: UIViewController, UITextViewDelegate {
        @IBOutlet var textView: UITextView!
        
        override func viewDidLoad() {
            let attributedString = NSMutableAttributedString(string: "Want to learn iOS? You should visit the best source of free iOS tutorials!")
            
            attributedString.addAttribute(.link, value: "https://coastalscience.noaa.gov/research/stressor-impacts-mitigation/pmn/", range: NSRange(location: 19, length: 55))
            
            textView.attributedText = attributedString
        }
        
        func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
            UIApplication.shared.open(URL, options: [:])
            return false
        }
    }
}
