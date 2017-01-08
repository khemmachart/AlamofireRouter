//
//  AlamofireRouterProtocol.swift
//  AlamofireRouter
//
//  Created by Khemmachart Chutapetch on 1/8/2560 BE.
//  Copyright © 2560 Khemmachart Chutapetch. All rights reserved.
//

import Alamofire

public protocol AlamofireRouterProtocol: URLRequestConvertible {
    
    var baseURLString: String { get }
    var path: String { get }
    var method: Alamofire.HTTPMethod { get }
    var headers: [String: String]? { get }
    var parameters: [String: Any]? { get }
    var rawBody: NSData { get }
    var responseClass: BaseResponse.Type { get }
}

