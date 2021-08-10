//
//  MovieModel.swift
//  Movie_Search
//
//  Created by mgpark on 2021/08/03.
//

import Foundation

struct MovieModel: Codable{
    let resultCount: Int
    let results: [Result]
}

struct Result: Codable{
    let trackName: String
    let previewUrl: String
    let image: String
    
    enum CodingKeys: String, CodingKey{
        case image = "artworkUrl100"
        case trackName
        case previewUrl
    }
}
