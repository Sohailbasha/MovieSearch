//
//  ImageFeed.swift
//  MovieSearch
//
//  Created by Ilias Basha on 1/3/18.
//  Copyright © 2018 Sohail. All rights reserved.
//

import Foundation

enum ImageFeed {
    case poster
    case backdrop
}

extension ImageFeed: Endpoint {
    var base: String {
        return "https://image.tmdb.org/t/p/"
    }
    
    var path: String {
        switch self {
        case .poster: return "w300"
        case .backdrop: return "w500"
        }
    }
    
    
}

