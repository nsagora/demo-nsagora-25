//
//  HeadingLabel.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

@IBDesignable
public class HeadingLabel: UILabel {
 
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        text = text?.uppercased()
        textColor = .primaryText
        font = UIFont.systemFont(ofSize: 32, weight: UIFontWeightRegular)
    }
}
