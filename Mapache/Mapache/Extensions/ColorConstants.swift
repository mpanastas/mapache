//
//  ColorConstants.swift
//  Mapache
//
//  Created by Luis Salazar on 11/5/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

import UIKit

extension UIColor {
    
    // MARK: - App colors
    
    
    // MARK: - Editor colors
    
    public class var editorBackground: UIColor {
        return #colorLiteral(red: 0.1607843137, green: 0.1647058824, blue: 0.1843137255, alpha: 1)
    }
    
    public class var editorTextColor: UIColor {
        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    public class var textError: UIColor {
        return #colorLiteral(red: 1, green: 0.337254902, blue: 0.3490196078, alpha: 1)
    }

    public class var successColor: UIColor {
        return #colorLiteral(red: 0.3810148835, green: 0.8283001781, blue: 1, alpha: 1)
    }
}
