//
//  algae_0_2_MenuViewController.swift
//  algae_uic
//
//  Created by GabrielMui on 4/10/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case VisualEstimate
    case ViewInputData
    case AboutAlgae
    case Map
    case About
}


class algae_0_2_MenuViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
       tableView.backgroundView = UIImageView(image: UIImage(named: "bg"))
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else { return }
        dismiss(animated: true) { [weak self] in
            print("Dismissing: \(menuType)")
            //self?.didTapMenuType?(menuType)
        }
    }
}
