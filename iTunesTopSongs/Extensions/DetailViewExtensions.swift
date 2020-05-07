//
//  DetailViewExtensions.swift
//  iTunesTopSongs
//
//  Created by mcs on 5/7/20.
//  Copyright © 2020 MCS. All rights reserved.
//

import UIKit

extension DetailView {
    @objc func buttonTapped(sender: UIButton) {
        if let url = URL(string: link) {
            UIApplication.shared.open(url)
        } else {
            itunesButton.titleLabel?.text = "URL Not Found"
        }
    }
}
