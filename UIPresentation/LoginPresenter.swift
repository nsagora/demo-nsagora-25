//
//  LoginPresenter.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 29/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class LoginPresenter: LoginPresenterProtocol {
    
    unowned public var view:LoginViewProtocol
    
    public init(view:LoginViewProtocol) {
        self.view = view
    }
    
    public func handleLoginAction() {
        // TODO: handleLoginAction
    }
}
