//
//  ContainerViewController.swift
//  Sushi App
//
//  Created by Stepan Vasiljeu on 3/6/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController, FoodViewControllerDelegate {

    var controller: UIViewController!
    var menuViewController: UIViewController!
    var isMove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configuereFoodViewController()
    }
    
    func configuereFoodViewController() {
        let foodViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! FoodViewController
        foodViewController.delegate = self
        controller = foodViewController
        view.addSubview(controller.view)
        addChild(controller)
    }
    
    func configuereMenuViewController() {
        if menuViewController == nil {
            menuViewController = MenuViewController()
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
            print("Added menuViewController")
        }
    }
    
    func showMenuViewController(shouldmove: Bool) {
        if shouldmove == true {
            // show Menu
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.controller.view.frame.origin.x = self.controller.view.frame.width - 140
            }) { (finished) in
                
            }
        } else {
            // delete Menu
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseInOut,
                           animations: {
                            self.controller.view.frame.origin.x = 0
            }) { (finished) in
                
            }
        }
    }
    
    // MARK: FoodViewControllerDelegate
    func toggleMenu() {
        configuereMenuViewController()
        isMove = !isMove
        showMenuViewController(shouldmove: isMove)
    }

}
