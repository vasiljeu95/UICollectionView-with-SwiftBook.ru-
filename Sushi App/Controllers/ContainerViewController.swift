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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configuereFoodViewController()
    }
    
    func configuereFoodViewController() {
        let foodViewController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! FoodViewController
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
    
    // MARK: FoodViewControllerDelegate
    func toggleMenu() {
        configuereFoodViewController()
    }

}
