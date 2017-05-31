//
//  EmailInput.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

@IBDesignable
public class EmailInput:BaseInput {
    
    public var email:String {
        get {
            return textField.text!
        }
        set {
            textField.text = newValue
        }
    }
}
