//
//  algae_0_1_2_2_ViewController.swift
//  algae_uic
//
//  Created by Kyra Buenaventura on 3/28/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import UIKit

class algae_0_1_2_2_ViewController: UIViewController {
    
    override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }
    //Bar movement

    @IBOutlet var bar: UILabel!
    @IBAction func estimateButton(_ sender: Any) {
        bar.frame.origin.x = 221
    }
    
    @IBAction func directButton(_ sender: Any) {
        bar.frame.origin.x = 51
    }
    
    //Farmland Button Changing Color
    @IBOutlet var farmlandButton: UIButton!
    
    @IBAction func farmlandChangeColor(_ sender: Any) {
        farmlandButton.backgroundColor = UIColor (red: 75/255.0, green: 175/255.0, blue: 175/255.0, alpha: 1.0)
        
        farmlandButton.setTitleColor(.white, for: .normal)
        
        
        urbanButton.backgroundColor = UIColor (red: 229/255.0, green: 229/255.0, blue: 228/255.0, alpha: 1.0)
        
        urbanButton.setTitleColor(.black, for: .normal)
        
    }
    
    //Urban Button Changing Color
    @IBOutlet var urbanButton: UIButton!
    @IBAction func urbanButtonChangeColor(_ sender: Any) {
        urbanButton.backgroundColor = UIColor (red: 75/255.0, green: 175/255.0, blue: 175/255.0, alpha: 1.0)
        
        urbanButton.setTitleColor(.white, for: .normal)
        
        farmlandButton.backgroundColor = UIColor (red: 229/255.0, green: 229/255.0, blue: 228/255.0, alpha: 1.0)
        
        farmlandButton.setTitleColor(.black, for: .normal)
    }
    
    //Natural Button Changing Color
    
    @IBOutlet var naturalButton: UIButton!
    @IBAction func naturalButtonChangeColor(_ sender: Any) {
        naturalButton.backgroundColor = UIColor (red: 75/255.0, green: 175/255.0, blue: 175/255.0, alpha: 1.0)
        
        naturalButton.setTitleColor(.white, for: .normal)
        
        lawnButton.backgroundColor = UIColor (red: 229/255.0, green: 229/255.0, blue: 228/255.0, alpha: 1.0)
        
        lawnButton.setTitleColor(.black, for: .normal)
        
        sandButton.backgroundColor = UIColor (red: 229/255.0, green: 229/255.0, blue: 228/255.0, alpha: 1.0)
        
        sandButton.setTitleColor(.black, for: .normal)
    }
    
    // Lawn Button Changing Color
    @IBOutlet var lawnButton: UIButton!
    @IBAction func lawnButtonChangeColor(_ sender: Any) {
        lawnButton.backgroundColor = UIColor (red: 75/255.0, green: 175/255.0, blue: 175/255.0, alpha: 1.0)
        
        lawnButton.setTitleColor(.white, for: .normal)
        
        naturalButton.backgroundColor = UIColor (red: 229/255.0, green: 229/255.0, blue: 228/255.0, alpha: 1.0)
        
        naturalButton.setTitleColor(.black, for: .normal)
        
        sandButton.backgroundColor = UIColor (red: 229/255.0, green: 229/255.0, blue: 228/255.0, alpha: 1.0)
        
        sandButton.setTitleColor(.black, for: .normal)
        
    }
    
    //Sand Button Changing Color
    @IBOutlet var sandButton: UIButton!
    @IBAction func sandButtonChangeColor(_ sender: Any) {
        sandButton.backgroundColor = UIColor (red: 75/255.0, green: 175/255.0, blue: 175/255.0, alpha: 1.0)
        
        sandButton.setTitleColor(.white, for: .normal)
        
        naturalButton.backgroundColor = UIColor (red: 229/255.0, green: 229/255.0, blue: 228/255.0, alpha: 1.0)
        
        naturalButton.setTitleColor(.black, for: .normal)
        
        lawnButton.backgroundColor = UIColor (red: 229/255.0, green: 229/255.0, blue: 228/255.0, alpha: 1.0)
        
        lawnButton.setTitleColor(.black, for: .normal)
    }
    
    
}
