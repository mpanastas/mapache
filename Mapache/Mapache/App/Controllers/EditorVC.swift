//
//  EditorVC.swift
//  Mapache
//
//  Created by Luis Salazar on 11/5/18.
//  Copyright © 2018 Luis Salazar. All rights reserved.
//

import UIKit

class EditorVC: UIViewController {

    
    // MARK: - IBOutlets
    
    @IBOutlet weak var editorTextView: UITextView!
    
    @IBOutlet weak var consoleTextView: UITextView!
    
    @IBOutlet weak var consoleTextViewHeight: NSLayoutConstraint! {
        didSet {
            consoleTextViewHeight.constant = 0
        }
    }
    
    // MARK: - Variables
    var file: File?
    
    // MARK: - Override
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    // MARK: - Setup functions
    private func setup() {
        if let file = file {
            title = file.name
            editorTextView.text = file.code
        } else {
            title = "New file"
            editorTextView.text = ""
        }
    }
    
    
    // MARK: - Custom functions
    
    private func cleanResults() {
        consoleTextView.text = ""
    }
    
    func showResults(results: [String], error: Bool) {
        consoleTextView.textColor = error ? #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1) : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        var text = ""
        for result in results {
            text += (result + "\n")
        }
        
        consoleTextView.text = text
        
        // stop loading to consoletextview
    }
    
    func showCompileError(_ message: String) {
        consoleTextView.textColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        let text = "COMPILE ERROR: \n\(message) "
        consoleTextView.text = text
    }
    
    
    // MARK: - IBActions
    
    @IBAction private func runCode(_ sender: Any) {
        cleanResults()
        
        Wizard.shared.runCode(input: editorTextView.text, vc: self)
        
        
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.7,
                       initialSpringVelocity: 7.0, options: .curveEaseIn,
                       animations: {
                        self.consoleTextViewHeight.constant = 250
                        
                        self.view.layoutIfNeeded()
        },completion: nil)
        
        // add loading to consoletextview
    }
    
}
