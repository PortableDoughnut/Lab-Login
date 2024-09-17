//
//  ViewController.swift
//  Lab - Login
//
//  Created by Gwen Thelin on 9/16/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginInButton.layer.cornerRadius = 17
        loginInButton.clipsToBounds = true
    }


}

