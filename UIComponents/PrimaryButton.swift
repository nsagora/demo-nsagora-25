//
//  PrimaryButton.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

@IBDesignable
public class PrimaryButton: UIButton {
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: UIFontWeightBold)
        titleLabel?.textColor = .white
        backgroundColor = .primary
        layer.cornerRadius = frame.size.height/2
    }
}
