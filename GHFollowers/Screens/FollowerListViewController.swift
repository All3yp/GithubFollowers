//
//  FollowerListViewController.swift
//  GHFollowers
//
//  Created by Alley Pereira on 07/05/21.
//

import UIKit

class FollowerListViewController: UIViewController {

    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true

        NetworkManager.shared.getFollowers(for: username, page: 1) { followers, errorMessage in
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Bad stuff happend", message: errorMessage!, buttonTitle: "Ok")
                return
            }
            print("Followrers.count = \(followers.count)")
            print(followers)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
