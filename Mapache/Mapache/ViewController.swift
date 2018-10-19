//
//  ViewController.swift
//  Mapache
//
//  Created by Luis Salazar on 10/4/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import UIKit
import Antlr4
import SwiftyJSON

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let input = """
        mapache {

        func hi() -> Void {
            print("hi");
        }
        
        hi();
        
        }
        """
        
        
        
        
        Wizard.shared.runCode(input: input)
        
    }
    

    
}
