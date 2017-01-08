//
//  RouterHelper.swift
//  AlamofireRouter
//
//  Created by Khemmachart Chutapetch on 1/8/2560 BE.
//  Copyright © 2560 Khemmachart Chutapetch. All rights reserved.
//

import Foundation

public class RouterHelper {
    
    public static func setHttpHeaders(_ mutableURLRequest: inout URLRequest, headers: [String: String]?) {
        RouterHelper.addDefaultHttpHeader(&mutableURLRequest)
        if let headers = headers {
            for each in headers.keys {
                mutableURLRequest.setValue(headers[each], forHTTPHeaderField: each)
            }
        }
    }
    
    private static func addDefaultHttpHeader(_ mutableURLRequest: inout URLRequest) {
        
        mutableURLRequest.setValue("application/json;charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        if let token = UserInfo.sharedInstance.token {
            mutableURLRequest.setValue(token, forHTTPHeaderField: "x-access-token")
        }
    }

}
