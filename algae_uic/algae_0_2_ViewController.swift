//
//  algae-0_2_ViewController.swift
//  algae_uic
//
//  Created by GabrielMui on 4/10/19.
//  Copyright © 2019 zaid. All rights reserved.
//

import UIKit

class algae_0_2_ViewController: UIViewController {
    
    let transiton = algae_0_2_SlideInTransition()
    var topView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "algae_0_2_MenuViewController") as? algae_0_2_MenuViewController else { return }
       
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }
    
    
    
}

extension algae_0_2_ViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = true
        return transiton
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = false
        return transiton
    }
}
