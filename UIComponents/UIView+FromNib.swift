//
//  UIView+FromNib.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

extension UIView {
    
    public func loadFromNib() {
        let className = shortClassNameFromClass(aClass: type(of: self))
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: className, bundle: bundle)
        
        guard let loadedView = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return }
        
        loadedView.translatesAutoresizingMaskIntoConstraints = false;
    
        self.addSubview(loadedView)
        
        let bindingDict = ["view": loadedView];
        let h = NSLayoutConstraint.constraints(withVisualFormat: "H:|-(0)-[view]-(0)-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: bindingDict)
        let v = NSLayoutConstraint.constraints(withVisualFormat: "V:|-(0)-[view]-(0)-|", options: NSLayoutFormatOptions(rawValue:0), metrics: nil, views: bindingDict)
        
        addConstraints(h)
        addConstraints(v)
    }
}

public func shortClassNameFromClass(aClass: AnyClass) -> String {
    let fullClassName = NSStringFromClass(aClass);
    let components = fullClassName.components(separatedBy:".")
    
    return components.last!
}
