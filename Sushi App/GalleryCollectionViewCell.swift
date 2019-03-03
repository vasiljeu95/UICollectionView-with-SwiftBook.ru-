//
//  GalleryCollectionViewCell.swift
//  Sushi App
//
//  Created by Stepan Vasiljeu on 3/3/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "GalleryCollectionViewCell"
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let smallDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let likeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "like")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let costLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImageView)
        addSubview(nameLabel)
        addSubview(smallDescriptionLabel)
        addSubview(likeImageView)
        addSubview(costLabel)
        
        backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        // mainImageView constraints
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3).isActive = true
        
        // nameLabel constraints
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 12).isActive = true
        
        // smallDescriptionLabel constraints
        smallDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        smallDescriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        smallDescriptionLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: 10).isActive = true
        
        // likeImageView constraints
        likeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        likeImageView.topAnchor.constraint(equalTo: smallDescriptionLabel.bottomAnchor, constant: 30).isActive = true
        likeImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        likeImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        // costLabel constraints
        costLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        costLabel.centerYAnchor.constraint(equalTo: likeImageView.centerYAnchor).isActive = true
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 5
        self.layer.shadowRadius = 9
        layer.shadowOpacity = 0.3
        layer.shadowOffset = CGSize(width: 5, height: 8)
        
        self.clipsToBounds = false
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
