//
//  RouterMethod.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter {
    
    public var method: Alamofire.HTTPMethod {
        switch self {
            
        // Login
            
        case .login:
            return .post
        case .forgotPassword:
            return .post
        case .register:
            return .post
            
        // Logout
            
        case .logout:
            return .post
            
        // Profile
            
        case .getUserProfile:
            return .get
        }
    }
}
