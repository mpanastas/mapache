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
    
    @IBOutlet weak var fileColor: UIView!
    
    func setupCell(with file: File) {
        nameLbl.text = file.title
        switch file.fileType {
        case .new:
            fileColor.backgroundColor = nil
        case .error:
            fileColor.backgroundColor = .textError
        case .success:
            fileColor.backgroundColor = .successColor
        }
    }
}
