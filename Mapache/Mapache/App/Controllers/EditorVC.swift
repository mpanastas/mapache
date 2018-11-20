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
    
    @IBOutlet weak var editorBottom: NSLayoutConstraint!
    
    @IBOutlet weak var editorTextViewBottom: NSLayoutConstraint!
    
    @IBOutlet weak var consoleTextViewBottom: NSLayoutConstraint!
    
    // MARK: - Variables
    var file: File?
    
    var isHorizontalRegular: Bool {
        get {
            return traitCollection.horizontalSizeClass == .regular
        }
    }
    
    // MARK: - Override
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let notifier = NotificationCenter.default
        notifier.addObserver(self,
                             selector: #selector(keyboardWillShow),
                             name: UIWindow.keyboardWillShowNotification,
                             object: nil)
        notifier.addObserver(self,
                             selector: #selector(keyboardWillHide),
                             name: UIWindow.keyboardWillHideNotification,
                             object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIWindow.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIWindow.keyboardWillHideNotification, object: nil)
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
    
    // MARK: Keyboard
    
    @objc func keyboardWillShow(notif: Notification){
        keyboardWillMove(notif: notif, hidding: false)
    }
    
    @objc func keyboardWillHide(notif: Notification){
        keyboardWillMove(notif: notif, hidding: true)
    }
    
    private func keyboardWillMove(notif: Notification, hidding: Bool){
        let userInfo = notif.userInfo!
        
        let animationDuration = userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let keyboardEndFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as! CGRect
        let convertedKeyboardEndFrame = view.convert(keyboardEndFrame, from: view.window)
        let rawAnimationCurve = notif.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        let animationCurve = UIView.AnimationOptions.init(rawValue: rawAnimationCurve)
        
        
        if isHorizontalRegular {
            // Update bottom constraint of editor and console
            editorTextViewBottom.constant = hidding ? 0 : -(view.bounds.maxY - convertedKeyboardEndFrame.minY)
            consoleTextViewBottom.constant = hidding ? 0 : -(view.bounds.maxY - convertedKeyboardEndFrame.minY)
            self.view.layoutIfNeeded()
        } else {
            if !hidding {
                // Hide console
                UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.7,
                               initialSpringVelocity: 7.0, options: .curveEaseIn,
                               animations: {
                                self.consoleTextViewHeight.constant = 0
                                
                                self.view.layoutIfNeeded()
                },completion: nil)
            }
            editorBottom.constant = hidding ? 0 : -(view.bounds.maxY - convertedKeyboardEndFrame.minY)
        }
        
        
        
        UIView.animate(withDuration: animationDuration, delay: 0.0, options: [.beginFromCurrentState, animationCurve], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    private func cleanResults() {
        consoleTextView.text = ""
    }
    
    func showResults(results: [String], error: Bool) {
        consoleTextView.textColor = error ? .textError : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        var text = ""
        for result in results {
            text += (result + "\n")
        }
        
        consoleTextView.text = text
        
        // stop loading to consoletextview
    }
    
    func showCompileError(_ message: String) {
        consoleTextView.textColor = .textError
        let text = "COMPILE ERROR: \n\(message) "
        consoleTextView.text = text
    }
    
    
    // MARK: - IBActions
    
    @IBAction private func runCode(_ sender: Any) {
        cleanResults()
        
        Wizard.shared.runCode(input: editorTextView.text, vc: self)
        if !isHorizontalRegular {
            editorTextView.resignFirstResponder()
            
            UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 0.7,
                           initialSpringVelocity: 7.0, options: .curveEaseIn,
                           animations: {
                            self.consoleTextViewHeight.constant = 250
                            
                            self.view.layoutIfNeeded()
            },completion: nil)
        }
        
        // add loading to consoletextview
    }
    
}
