//
//  Genre.swift
//  iTunesTopSongs
//
//  Created by Ethan Burns on 5/8/20.
//  Copyright © 2020 Ethan Burns. All rights reserved.
//

struct Genre: Decodable {
    var genreName: String
    
    enum CodingKeys: String, CodingKey {
        case genreName = "name"
    }
}
