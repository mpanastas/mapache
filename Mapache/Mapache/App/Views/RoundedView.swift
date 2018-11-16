//
//  RoundedView.swift
//  Mapache
//
//  Created by Luis Salazar on 11/15/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 8 {
        didSet {
            if cornerRadius != 0 {
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = true
            }
        }
    }
    
}
