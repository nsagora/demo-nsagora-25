//
//  TitleLabel.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class TitleLabel: UILabel {
 
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        text = text?.uppercased()
        textColor = .primaryText
        font = UIFont.systemFont(ofSize: 24, weight: UIFontWeightThin)
    }
}
