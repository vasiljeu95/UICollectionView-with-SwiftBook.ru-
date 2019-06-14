//
//  MenuTableCell.swift
//  Sushi App
//
//  Created by Stepan Vasiljeu on 3/6/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class MenuTableCell: UITableViewCell {

    static let reuseId = "MenuTableCell"
    
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let myLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Custom text"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .white
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(iconImageView)
        addSubview(myLabel)
        
        backgroundColor = .clear
        
        // iconImageView constaints
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        // myLabel constaints
        myLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 12).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
