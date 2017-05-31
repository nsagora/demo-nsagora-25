//
//  BaseInput.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class BaseInput: UIView {
    
    @IBOutlet var backgroundView: BackgroundView!
    @IBOutlet var textField: UITextField!
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadFromNib()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        textField.textColor = .inputText
        textField.font = UIFont.systemFont(ofSize: 17, weight: UIFontWeightLight)
    }
}
