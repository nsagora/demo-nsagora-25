//
//  UIViewController+Extensions.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 31/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

extension UIViewController {
    
    public static func instantiateFromStoryboard<T>() -> T where T: UIViewController {
        
        let className = String(describing: self)
        let bundle = Bundle(for: self)
        let storyboard = UIStoryboard(name: className, bundle: bundle)
        
        guard let vc = storyboard.instantiateInitialViewController() as? T else {
            fatalError()
        }
        
        return vc
    }
}

