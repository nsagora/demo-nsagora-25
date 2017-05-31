//
//  SignupPresenter.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class SignupPresenter: SignupPresenterProtocol {
    
    unowned public var view:SignupViewProtocol
    
    public init(view:SignupViewProtocol) {
        self.view = view
    }
    
    public func handleSignupAction() {
        // TODO: handleSignupAction
    }
}
