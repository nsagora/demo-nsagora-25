//
//  BackgroundView.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class BackgroundView: UIView {
 
    public var borderColor:UIColor = .inputBorder {
        didSet { refreshLayout() }
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    fileprivate func setup() {
        clipsToBounds = true
        refreshLayout()
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        refreshLayout()
    }
    
    fileprivate func refreshLayout() {
        layer.borderWidth = 1
        layer.borderColor = borderColor.cgColor
        layer.cornerRadius = 8
    }
}
