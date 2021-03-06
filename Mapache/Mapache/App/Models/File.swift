//
//  File.swift
//  Mapache
//
//  Created by Luis Salazar on 11/15/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

enum FileType {
    case error
    case success
    case new
}

struct File {
    var title: String = "File"
    var code: String = ""
    var description: String = ""
    var creationDate: Date = Date()
    var modifyDate: Date = Date()
    var fileType = FileType.new
    
    init(_ title: String, _ code: String, _ type: FileType){
        self.title = title
        self.code = code
        self.fileType = type
    }
}
