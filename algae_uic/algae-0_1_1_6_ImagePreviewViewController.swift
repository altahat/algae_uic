//
//  algae-0_1_1_6_ImagePreviewViewController.swift
//  algae_uic
//
//  Created by Elijah Mendez on 4/7/19.
//  Copyright © 2019 Elijah Mendez. All rights reserved.
//

import Foundation
import UIKit

class algae_0_1_1_6_ImagePreviewViewController : UIViewController {
    
    var capturedImage : UIImage?

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = capturedImage
    }
}
