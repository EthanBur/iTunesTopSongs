//
//  ViewController.swift
//  iTunesTopSongs
//
//  Created by Ethan Burns on 5/6/20.
//  Copyright © 2020 Ethan Burns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.controller = self
        
    }

    override func loadView() {
        view = mainView
    }
}

