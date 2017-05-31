//
//  SignupViewProtocol.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public protocol SignupViewProtocol: class {
    
    var presenter:SignupPresenterProtocol! { get set }
}
