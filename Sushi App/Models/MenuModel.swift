//
//  MenuModel.swift
//  Sushi App
//
//  Created by Stepan Vasiljeu on 3/6/19.
//  Copyright © 2019 Stepan Vasiljeu. All rights reserved.
//

import Foundation
import UIKit

enum MenuModel: Int, CustomStringConvertible {
    case Profile
    case Menu
    case Constants
    case Settings
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .Menu: return "Menu"
        case .Constants: return "Constants"
        case .Settings: return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "Profile") ?? UIImage()
        case .Menu: return UIImage(named: "Menu") ?? UIImage()
        case .Constants: return UIImage(named: "Constants") ?? UIImage()
        case .Settings: return UIImage(named: "Settings") ?? UIImage()
        }
    }
}
