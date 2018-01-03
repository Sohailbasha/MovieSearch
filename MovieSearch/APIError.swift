//
//  APIError.swift
//  MovieSearch
//
//  Created by Ilias Basha on 1/3/18.
//  Copyright © 2018 Sohail. All rights reserved.
//

import Foundation

enum APIError: Error {
    case requestFailed
    case invalidData
    case responseUnsuccessful
    case jsonparsingFailure
    case jsonConversionFailure
    var localizedDescription: String {
        switch self {
        case .requestFailed: return "Request Failed"
        case .invalidData: return "Invalid Data"
        case .responseUnsuccessful: return "Response Unsuccessful"
        case .jsonparsingFailure: return "JSON Parsing Failure"
        case .jsonConversionFailure: return "JSON Conversion Failure"
        }
    }
}
