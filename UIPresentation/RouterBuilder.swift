//
//  RouterBuilder.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation

public class RouterBuilder {
    
    public init () { }
    
    public func build() -> Router {
        
        let loginBuilder = LoginBuilder()
        let rootViewController = loginBuilder.build()
        let router = Router(rootViewController: rootViewController)
        
        return router
    }
}
