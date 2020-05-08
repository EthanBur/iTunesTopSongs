//
//  MainViewCustomCell.swift
//  iTunesTopSongs
//
//  Created by Ethan Burns on 5/6/20.
//  Copyright © 2020 Ethan Burns. All rights reserved.
//

import UIKit

class MainViewCell: UITableViewCell {
    let artistLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let albumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let albumImage: UIImageView = {
        let label = UIImageView()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCellView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellView() {
        addSubview(artistLabel)
        addSubview(albumLabel)
        addSubview(albumImage)
        
        albumImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        albumImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        albumImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        albumImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        
        albumLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        albumLabel.bottomAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        albumLabel.leadingAnchor.constraint(equalTo: albumImage.trailingAnchor, constant: 10).isActive = true
        albumLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        artistLabel.topAnchor.constraint(equalTo: albumLabel.bottomAnchor).isActive = true
        artistLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        artistLabel.leadingAnchor.constraint(equalTo: albumImage.trailingAnchor, constant: 10).isActive = true
        artistLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
}
