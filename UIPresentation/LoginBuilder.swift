//
//  LoginBuilder.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 29/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class LoginBuilder {
    
    public func build() -> UIViewController {
        
        let view:LoginViewController = .instantiateFromStoryboard()
        let presenter = LoginPresenter(view: view)
        view.presenter = presenter
        
        return view
    }
}
