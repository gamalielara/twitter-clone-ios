//
//  WelcomeViewController.swift
//  Twitter Clone
//
//  Created by Ara Gamaliel on 6/2/25.
//

import UIKit

class WelcomeViewController: BaseUIViewController {
    @IBOutlet weak var emailTextField: PaddedTextField!
    
    @IBOutlet weak var passwordTextField: PaddedTextField!
    
    @IBOutlet weak var usernameTextfield: PaddedTextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.cornerRadius = registerButton.frame.height / 2
        
        emailTextField.layer.borderWidth = 1.5
        emailTextField.layer.cornerRadius = 20
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Enter your Email", attributes: [
            .foregroundColor: UIColor.white
        ])
        
        usernameTextfield.layer.borderWidth = 1.5
        usernameTextfield.layer.cornerRadius = 20
        usernameTextfield.layer.borderColor = UIColor.white.cgColor
        usernameTextfield.attributedPlaceholder = NSAttributedString(string: "Enter your Username", attributes: [
            .foregroundColor: UIColor.white
        ])

        
        passwordTextField.layer.borderWidth = 1.5
        passwordTextField.layer.cornerRadius = 20
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Enter your Password", attributes: [
            .foregroundColor: UIColor.white
        ])
    }
}
