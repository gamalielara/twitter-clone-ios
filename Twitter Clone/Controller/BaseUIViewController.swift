//
//  UIViewControllerExtension.swift
//  Twitter Clone
//
//  Created by Ara Gamaliel on 6/3/25.
//

import UIKit

class BaseUIViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
}

