//
//  Router.swift
//  MyAwesomeApp
//
//  Created by Alex Cristea on 30/05/2017.
//  Copyright © 2017 iOS NSAgora. All rights reserved.
//

import Foundation


public class Router: RouterProtocol {
    
    public let viewController:UIViewController
    
    public init(rootViewController:UIViewController) {
        self.viewController = rootViewController
    }
    
    public func show(viewController: UIViewController) {
        viewController.present(viewController, animated: true, completion: nil)
    }
    
    public func dismiss() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
