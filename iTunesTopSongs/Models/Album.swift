//
//  Album.swift
//  iTunesTopSongs
//
//  Created by Ethan Burns on 5/8/20.
//  Copyright © 2020 Ethan Burns. All rights reserved.
//

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
