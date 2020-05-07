//
//  DetailView.swift
//  iTunesTopSongs
//
//  Created by mcs on 5/7/20.
//  Copyright © 2020 MCS. All rights reserved.
//

//a larger image at the top of the screen and the same information that was shown on the cell, plus genre, release date, and copyright info below the image. A button should also be included on this second view that when tapped fast app switches to the album page in the iTunes store. The button should be centered horizontally and pinned 20 points from the bottom of the view and 20 points from the leading and trailing edges of the view.

import UIKit

class DetailView: UIView {
    let artistLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let albumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let albumImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let genreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let copyrightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()
    
    let releaseDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    let itunesButton: UIButton = {
        let button = UIButton()
        button.accessibilityIdentifier = "itunesButton"
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .purple
        button.setTitle("Itunes Store", for: .normal)
        return button
    }()
    
    weak var controller: UIViewController?
    var link = ""
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        itunesButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(artistLabel)
        addSubview(albumLabel)
        addSubview(albumImage)
        addSubview(genreLabel)
        addSubview(copyrightLabel)
        addSubview(releaseDateLabel)
        addSubview(itunesButton)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            itunesButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            itunesButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            itunesButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            itunesButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            albumImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            albumImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            albumImage.widthAnchor.constraint(equalToConstant: 175),
            
            artistLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            artistLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor),
            artistLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            artistLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            albumLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            albumLabel.topAnchor.constraint(equalTo: artistLabel.bottomAnchor),
            albumLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            albumLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            genreLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            genreLabel.topAnchor.constraint(equalTo: albumLabel.bottomAnchor),
            genreLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            genreLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            releaseDateLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            releaseDateLabel.topAnchor.constraint(equalTo: genreLabel.bottomAnchor),
            releaseDateLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            releaseDateLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            copyrightLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            copyrightLabel.topAnchor.constraint(equalTo: releaseDateLabel.bottomAnchor),
            copyrightLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            copyrightLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
