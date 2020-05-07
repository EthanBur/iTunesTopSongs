//
//  UIImageViewExtensions.swift
//  iTunesTopSongs
//
//  Created by mcs on 5/7/20.
//  Copyright © 2020 MCS. All rights reserved.
//

import UIKit

extension UIImageView {
    func downloadImageFrom(link:String, contentMode: UIView.ContentMode) {
        let urlLink = link
        guard let url = URL(string: urlLink) else { return }
        URLSession.shared.dataTask( with: url, completionHandler: {
            (data, response, error) -> Void in
            DispatchQueue.main.async {
                self.contentMode =  contentMode
                if let data = data { self.image = UIImage(data: data) }
            }
        }).resume()
    }
}
