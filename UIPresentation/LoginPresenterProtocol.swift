//
//  LoginPresenterProtocol.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 29/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public protocol LoginPresenterProtocol {
    
    unowned var view:LoginViewProtocol { get set }
  
    func handleLoginAction()
}
