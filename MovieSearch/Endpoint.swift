//
//  Endpoint.swift
//  MovieSearch
//
//  Created by Ilias Basha on 1/3/18.
//  Copyright © 2018 Sohail. All rights reserved.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
}

extension Endpoint {
    var apiKey: String {
        return "api_key=13f7bc03bd7ae14599819512c3a70b31"
    }
    
    var urlComponents: URLComponents? {
        var components = URLComponents(string: base)
        components?.path = path
        components?.query = apiKey
        return components
    }
    
    var request: URLRequest {
        guard let url = urlComponents?.url else {
            fatalError("unable to get URL from components")
        }
        return URLRequest(url: url)
    }
}
