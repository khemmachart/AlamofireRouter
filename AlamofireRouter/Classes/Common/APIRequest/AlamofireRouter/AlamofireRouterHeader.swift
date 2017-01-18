//
//  RouterHeaders.swift
//  grokRouter
//
//  Created by Khemmachart Chutapetch on 7/31/2559 BE.
//  Copyright © 2559 Teak Mobile Inc. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter {
    
    public var headers: [String: String]? {
        switch self {
        default:
            return nil
        }
    }
    
    public func setHttpHeaders(_ mutableURLRequest: inout URLRequest, headers: [String: String]?) {
        addDefaultHttpHeader(&mutableURLRequest)
        if let headers = headers {
            for each in headers.keys {
                mutableURLRequest.setValue(headers[each], forHTTPHeaderField: each)
            }
        }
    }
    
    private func addDefaultHttpHeader(_ mutableURLRequest: inout URLRequest) {
        
        mutableURLRequest.setValue("application/json;charset=utf-8", forHTTPHeaderField: "Content-Type")
        
        if let token = UserInfo.sharedInstance.token {
            mutableURLRequest.setValue(token, forHTTPHeaderField: "x-access-token")
        }
    }
}
