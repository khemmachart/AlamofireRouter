//
//  RouterPath.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation

extension AlamofireRouter {
    
    public var path: String {
        switch self {

        case .login:
            return "/auth/login/withEmail"
        case .forgotPassword:
            return "/auth/forgotPassword"
        case .register:
            return "/auth/register"
            
            // Logout
            
        case .logout:
            return "/auth/\(UserInfo.sharedInstance.UID)/logout"
            
            // Profile
            
        case .getUserProfile:
            return "/services/profile/\(UserInfo.sharedInstance.UID)/getUserProfile"
        }
    }
}
