//
//  MenuViewController.swift
//  Sushi App
//
//  Created by Stepan Vasiljeu on 3/6/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        configureTableView()
    }
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuTableCell.self, forCellReuseIdentifier: MenuTableCell.reuseId)
        view.addSubview(tableView)
        tableView.frame = view.bounds
        
        tableView.separatorStyle = .none
        tableView.rowHeight = 90
        
        tableView.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableCell.reuseId) as! MenuTableCell
        let menuModel = MenuModel(rawValue: indexPath.row)
        cell.iconImageView.image = menuModel?.image
        cell.myLabel.text = menuModel?.description
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
