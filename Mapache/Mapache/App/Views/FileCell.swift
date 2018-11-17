//
//  FileCell.swift
//  Mapache
//
//  Created by Luis Salazar on 11/15/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import UIKit

class FileCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLbl: UILabel!
    
    func setupCell(with file: File) {
        nameLbl.text = file.name
    }
}