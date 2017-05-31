//
//  SmallLabel.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

@IBDesignable
public class SmallLabel:UILabel {
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        textColor = .primaryText
        font = UIFont.systemFont(ofSize: 14, weight: UIFontWeightLight)
    }
}
