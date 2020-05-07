//
//  AlbumModel.swift
//  iTunesTopSongs
//
//  Created by mcs on 5/6/20.
//  Copyright © 2020 MCS. All rights reserved.
//

import UIKit

//Albums
struct AlbumModel: Decodable {
    var feed: Feed
}

struct Feed: Decodable {
    var results: [Album]
}

struct Album: Decodable {
    var artistName: String
    var albumName: String
    var albumImage: String
    var releaseDate: String
    var copyrightInfo: String
    var genre: [Genre]
    var albumUrl: String
    
    enum CodingKeys: String, CodingKey {
        case artistName
        case albumName = "name"
        case albumImage = "artworkUrl100"
        case releaseDate
        case copyrightInfo = "copyright"
        case genre = "genres"
        case albumUrl = "url"
    }
}

struct Genre: Decodable {
    var genreName: String
    
    enum CodingKeys: String, CodingKey {
        case genreName = "name"
    }
}
