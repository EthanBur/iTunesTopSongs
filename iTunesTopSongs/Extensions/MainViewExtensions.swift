//
//  MainViewExtensions.swift
//  iTunesTopSongs
//
//  Created by Ethan Burns on 5/6/20.
//  Copyright © 2020 Ethan Burns. All rights reserved.
//

import UIKit

extension MainView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? MainViewCell else {
            return UITableViewCell()
        }
        cell.albumImage.downloadImageFrom(link: albums[indexPath.row].albumImage, contentMode: .scaleAspectFit)
        cell.albumLabel.text = albums[indexPath.row].albumName
        cell.artistLabel.text = albums[indexPath.row].artistName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        detailVC.album = self.albums[indexPath.row]
        self.controller?.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    func getAlbums() {
        let decoder = JSONDecoder()
        guard let url = URL(string: "https://rss.itunes.apple.com/api/v1/us/apple-music/top-albums/all/100/explicit.json") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {
            data, response, error in
            
            if let data = data {
                do{
                    let albumData = try decoder.decode(AlbumModel.self, from: data)
                    self.albums = self.albums + albumData.feed.results
                    DispatchQueue.main.async {
                        self.tableview.reloadData()
                    }
                } catch {
                    self.createAlert(title: "Incorrect Data Format", message: "The data received from iTunes was incorrectly formatted.", buttonTitle: "Cancel")
                }
            } else {
                self.createAlert(title: "Data Task Error", message: "The data task was unable to complete task", buttonTitle: "Cancel")
            }
        }
        task.resume()
    }
    
    func createAlert(title: String, message: String, buttonTitle: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: buttonTitle, style: .cancel, handler: nil))
        self.controller?.present(alert, animated: true)
    }
}
