//
//  ViewController.swift
//  Lab - Login
//
//  Created by Gwen Thelin on 9/16/24.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginInButton.layer.cornerRadius = 17
        loginInButton.clipsToBounds = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        switch sender {
            case forgotPasswordButton:
                segue.destination.title = "Forgot Password"
            case forgotUsernameButton:
                segue.destination.title = "Forgot Username"
            default:
                segue.destination.title = usernameTextField.text
        }
    }
    
    @IBAction func onLoginButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "segueLanding", sender: sender)
    }
    
    @IBAction func onForgotUsernameButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "segueLanding", sender: sender)
    }
    
    @IBAction func onForgotPasswordButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "segueLanding", sender: sender)
    }
    
}

