//
//  MovieFeed.swift
//  MovieSearch
//
//  Created by Ilias Basha on 1/3/18.
//  Copyright © 2018 Sohail. All rights reserved.
//

import Foundation

enum MovieFeed {
    case nowPlaying
    case topRated
    case configuration
}

extension MovieFeed: Endpoint {
    var base: String {
        return "https://api.themoviedb.org"
    }
    
    var path: String {
        switch self {
            case .nowPlaying: return "/3/movie/now_playing"
            case .topRated: return "/3/movie/top_rated"
            case .configuration return "/configuration"
        }
    }
}
