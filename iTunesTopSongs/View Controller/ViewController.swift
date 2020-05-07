//
//  ViewController.swift
//  iTunesTopSongs
//
//  Created by mcs on 5/6/20.
//  Copyright © 2020 MCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.controller = self
        view = mainView
    }


}

