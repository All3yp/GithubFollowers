//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Alley Pereira on 08/05/21.
//

import UIKit

extension UIViewController {

    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {

        DispatchQueue.main.async {
            let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
