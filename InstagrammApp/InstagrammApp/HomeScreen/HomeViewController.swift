//
//  HomeViewController.swift
//  InstagrammApp
//
//  Created by Валентин Коскин on 17.10.2022.
//

import UIKit

/// Экран Дом
final class HomeViewController: UIViewController {
    
    // MARK: Constants
    
    private enum Constants {
        static let whiteBlackColorName = "whiteBlackColor"
        static let blackWhiteColorName = "blackWhiteColor"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: Constants.whiteBlackColorName)

        // Do any additional setup after loading the view.
    }

}
