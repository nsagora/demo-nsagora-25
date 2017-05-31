//
//  SignupBuilder.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class SignupBuilder {
    
    public func build() -> UIViewController {
        
        let view:SignupViewController = .instantiateFromStoryboard()
        let presenter = SignupPresenter(view: view)
        view.presenter = presenter
        
        return view
    }
}
