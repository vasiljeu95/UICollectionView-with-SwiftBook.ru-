//
//  ViewController.swift
//  Sushi App
//
//  Created by Stepan Vasiljeu on 3/3/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var deliveryLabel: UILabel!
    
    private var galleryCollectionView = GalleryCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(galleryCollectionView)
        galleryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        galleryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        galleryCollectionView.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 10).isActive = true
        galleryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
    }


}

