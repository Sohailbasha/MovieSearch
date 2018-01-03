//
//  MovieClient.swift
//  MovieSearch
//
//  Created by Ilias Basha on 1/3/18.
//  Copyright © 2018 Sohail. All rights reserved.
//

import Foundation

class MovieClient: APIClient {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        // sets the URLSession o default
        self.init(configuration: .default)
    }
    
    func getFeed(from movieFeedType: MovieFeed, completion: @escaping (Result<MovieFeedResult?, APIError>) -> Void) {
        fetch(with: movieFeedType.request , decode: { json -> MovieFeedResult? in
            guard let movieFeedResult = json as? MovieFeedResult else { return  nil }
            return movieFeedResult
        }, completion: completion)
    }
}
