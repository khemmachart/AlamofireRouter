//
//  AlamofireRouterParameters.swift
//  AlamofireRouter
//
//  Created by Khemmachart Chutapetch on 1/8/2560 BE.
//  Copyright © 2560 Khemmachart Chutapetch. All rights reserved.
//

import Foundation

extension AlamofireRouter {
    
    public var parameters: [String: Any]? {
        switch self {
            
        // Login
            
        case .login(let email, let password):
            return [
                "email": email,
                "password": password
            ]
        case .forgotPassword(let username, let referenceID):
            return [
                "username": username,
                "referenceID": referenceID
            ]
        case .register(let email, let password, let userInfo):
            return [
                "email": email,
                "password": password,
                "userInfo": [
                    "name": userInfo.name,
                    "phone": userInfo.phone
                    ]
            ]
            
        // Logout
            
        case .logout:
            return nil
            
        // Profile
            
        case .getUserProfile:
            return nil
        }
    }
}
