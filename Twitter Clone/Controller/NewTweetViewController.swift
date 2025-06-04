//
//  NewTweetViewController.swift
//  Twitter Clone
//
//  Created by Ara Gamaliel on 6/4/25.
//

import UIKit

class NewTweetViewController: UIViewController{
    
    @IBOutlet weak var profilePicture: UIImageView!
        
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func tweetButtonPressed(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePicture.layer.cornerRadius = profilePicture.frame.height / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
}
