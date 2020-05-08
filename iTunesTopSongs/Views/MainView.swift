//
//  MainView.swift
//  iTunesTopSongs
//
//  Created by Ethan Burns on 5/6/20.
//  Copyright © 2020 Ethan Burns. All rights reserved.
//

import UIKit

class MainView: UIView {
    let tableview: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    weak var controller: UIViewController?
    var albums: [Album] = []
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(MainViewCell.self, forCellReuseIdentifier: "Cell")
        
        setupViews()
        getAlbums()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        addSubview(tableview)
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableview.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableview.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableview.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableview.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
