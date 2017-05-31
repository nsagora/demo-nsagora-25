//
//  PasswordInput.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class PasswordInput:BaseInput {
 
    public var password:String {
        get {
            return textField.text!
        }
        set {
            textField.text = newValue
        }
    }
}

extension PasswordInput {
    
    @IBAction func onTogglePassword(sender:Any) {
        togglePassword()
    }
}

extension PasswordInput {
    
    func togglePassword() {
        let firstResponder = textField.isFirstResponder
        
        textField.isEnabled = false
        if (firstResponder) {
            textField.resignFirstResponder()
        }
        
        textField.isSecureTextEntry = !textField.isSecureTextEntry
        
        textField.isEnabled = true
        if (firstResponder) {
            textField.becomeFirstResponder()
        }
    }
}
