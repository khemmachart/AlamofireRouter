//
//  LoginRouter.swift
//  MyAIS
//
//  Created by Khemmachart Chutapetch on 8/9/2559 BE.
//  Copyright © 2559 Khemmachart Chutapetch. All rights reserved.
//

import Foundation

public enum AlamofireRouter: AlamofireRouterProtocol {
    
    // Login
    
    case login(email: String, password: String)
    case forgotPassword(username: String, referenceID: String)
    case register(email: String, password: String, userInfo: UserInfo)
    
    // Logout
    
    case logout()
    
    // Profile
    
    case getUserProfile()
}

