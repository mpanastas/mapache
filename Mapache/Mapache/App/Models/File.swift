//
//  File.swift
//  Mapache
//
//  Created by Luis Salazar on 11/15/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

struct File {
    var name: String = "File"
    var code: String = ""
    var description: String = ""
    var creationDate: Date = Date()
    var modifyDate: Date = Date()
    
    init(_ name: String, _ code: String){
        self.name = name
        self.code = code
    }
}
