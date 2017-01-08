//
//  RouterResponseClass.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation

extension AlamofireRouter {
    
    public var responseClass: BaseResponse.Type {
        switch self {
            
        // Login
        
        case .login:
            return BaseResponse.self
        case .forgotPassword:
            return BaseResponse.self
        case .register:
            return BaseResponse.self
            
        // Logout
            
        case .logout:
            return BaseResponse.self
            
        // Profile
            
        case .getUserProfile:
            return BaseResponse.self
        }
    }
}

