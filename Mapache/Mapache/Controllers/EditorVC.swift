//
//  EditorVC.swift
//  Mapache
//
//  Created by Luis Salazar on 11/5/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import UIKit

class EditorVC: UIViewController {

    @IBOutlet weak var editorTextView: UITextView!
    
    @IBOutlet weak var consoleTextView: UITextView!
    
    @IBOutlet weak var consoleTextViewHeight: NSLayoutConstraint! {
        didSet {
            consoleTextViewHeight.constant = 0
        }
    }
    
    // MARK: - Override
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Setup functions
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func runCode(_ sender: Any) {
        Wizard.shared.runCode(input: editorTextView.text)
        
        
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 7.0, options: .curveEaseIn,
                       animations: {
                        self.consoleTextViewHeight.constant = 250
                        
                        self.view.layoutIfNeeded()
        },completion: nil)
    }

}
