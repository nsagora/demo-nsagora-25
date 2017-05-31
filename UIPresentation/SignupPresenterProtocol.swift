//
//  SignupPresenterProtocol.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public protocol SignupPresenterProtocol {
    
    unowned var view:SignupViewProtocol { get set }
    
    func handleSignupAction()
}
