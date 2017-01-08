//
//  AlamofireRouterURLRequest.swift
//  AlamofireRouter
//
//  Created by Khemmachart Chutapetch on 1/8/2560 BE.
//  Copyright © 2560 Khemmachart Chutapetch. All rights reserved.
//

import Foundation
import Alamofire

extension AlamofireRouter {
    
    // MARK: URLRequestConvertible
    
    public func asURLRequest() throws -> URLRequest {
        let url = URL(string: baseURLString + path)!
        var mutableURLRequest = URLRequest(url: url)
        mutableURLRequest.httpMethod = method.rawValue
        mutableURLRequest.httpBody = rawBody as Data
        RouterHelper.setHttpHeaders(&mutableURLRequest, headers: headers)
        
        return try Alamofire.JSONEncoding.default.encode(mutableURLRequest, with: parameters)
    }
}
