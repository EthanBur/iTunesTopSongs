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
        label.numberOfLines = 0
        return label
    }()
    
    let albumLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    let albumImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init (style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCellView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCellView() {
        addSubview(albumImage)
        addSubview(artistLabel)
        addSubview(albumLabel)
        
        albumImage.heightAnchor.constraint(equalToConstant: 70).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: 70).isActive = true
        albumImage.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        albumImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        
        albumLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        albumLabel.bottomAnchor.constraint(equalTo: centerYAnchor).isActive = true
        albumLabel.leadingAnchor.constraint(equalTo: albumImage.trailingAnchor, constant: 10).isActive = true
        albumLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        artistLabel.topAnchor.constraint(equalTo: albumLabel.bottomAnchor).isActive = true
        artistLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        artistLabel.leadingAnchor.constraint(equalTo: albumImage.trailingAnchor, constant: 10).isActive = true
        artistLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}
