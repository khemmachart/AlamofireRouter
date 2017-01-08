//
//  UserInfo.swift
//  AlamofireRouter
//
//  Created by Khemmachart Chutapetch on 1/8/2560 BE.
//  Copyright © 2560 Khemmachart Chutapetch. All rights reserved.
//

import Foundation

public class UserInfo: NSObject {
    
    public static let sharedInstance = UserInfo()
    
    var UID: String?
    var token: String?
    
    var name: String?
    var phone: String?
}
