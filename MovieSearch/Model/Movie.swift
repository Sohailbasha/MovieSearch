//
//  Movie.swift
//  MovieSearch
//
//  Created by Ilias Basha on 1/3/18.
//  Copyright © 2018 Sohail. All rights reserved.
//

import Foundation

struct Movie: Decodable {
    let title: String?
    let poster_path: String?
    let overview: String?
    let release_date: String?
    let backdrop_path: String?
}
