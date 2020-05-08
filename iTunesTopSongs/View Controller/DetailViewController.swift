//
//  DetailViewController.swift
//  iTunesTopSongs
//
//  Created by Ethan Burns on 5/7/20.
//  Copyright © 2020 Ethan Burns. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let detailView = DetailView()
    var album: Album!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailView.controller = self
        detailView.albumImage.downloadImageFrom(link: album.albumImage, contentMode: .scaleAspectFit)
        detailView.albumLabel.text = "Album: \(album.albumName)"
        detailView.artistLabel.text = "Artist: \(album.artistName)"
        detailView.copyrightLabel.text = album.copyrightInfo
        detailView.releaseDateLabel.text = "Release Date: \(album.releaseDate)"
        for i in 0..<album.genre.count {
            detailView.genreLabel.text = detailView.genreLabel.text ?? "Genres: " + album.genre[i].genreName
        }
        detailView.link = album.albumUrl
    }

    override func loadView() {
        view = detailView
    }
}
