//
//  Dictionary+Ext.swift
//  Mapache
//
//  Created by Luis Salazar on 11/19/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import Foundation

extension Dictionary where Value: Equatable {
    func someKey(forValue val: Value) -> Key? {
        return first(where: { $1 == val })?.key
    }
}
