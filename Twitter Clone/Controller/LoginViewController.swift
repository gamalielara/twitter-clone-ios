//
//  LoginViewController.swift
//  Twitter Clone
//
//  Created by Ara Gamaliel on 6/3/25.
//

import UIKit

class LoginViewController: BaseUIViewController {
    @IBOutlet weak var emailTextField: PaddedTextField!
    
    @IBOutlet weak var passwordTextField: PaddedTextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func goToRegisterButtonPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
        
        emailTextField.layer.borderWidth = 1.5
        emailTextField.layer.cornerRadius = 20
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.attributedPlaceholder = NSAttributedString(string: "Enter your Email", attributes: [
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
