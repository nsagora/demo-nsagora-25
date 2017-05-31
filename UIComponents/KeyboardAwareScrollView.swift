//
//  KeyboardAwareScrollView.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 31/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

class KeyboardAwareScrollView: UIScrollView {
    
    let notificationCenter = NotificationCenter.default

    deinit {
        notificationCenter.removeObserver(self)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        
        notificationCenter.addObserver(self, selector: #selector(keyboardWillShow(_:)), name:NSNotification.Name.UIKeyboardWillShow, object: nil)
        notificationCenter.addObserver(self, selector: #selector(keyboardWillHide(_:)), name:NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
}

extension KeyboardAwareScrollView {
    
    func keyboardWillShow(_ notification:NSNotification) {
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.contentInset
        contentInset.bottom = keyboardFrame.size.height
        
        self.contentInset = contentInset
        self.scrollIndicatorInsets = contentInset
    }
    
    func keyboardWillHide(_ notification:NSNotification) {
        self.contentInset = .zero
        self.scrollIndicatorInsets = .zero
    }
}

