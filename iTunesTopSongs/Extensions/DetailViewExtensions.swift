//
//  DetailViewExtensions.swift
//  iTunesTopSongs
//
//  Created by Ethan Burns on 5/7/20.
//  Copyright © 2020 Ethan Burns. All rights reserved.
//

import UIKit

extension DetailView {
    @objc func buttonTapped(sender: UIButton) {
        guard let url = URL(string: link), UIApplication.shared.canOpenURL(url) else {
            return
        }
        UIApplication.shared.open(url)
    }
}
