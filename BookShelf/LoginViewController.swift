//
//  LoginViewController.swift
//  BookShelf
//
//  Created by Jacob Finn on 11/27/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    //Mark:- Variables
    
    
    
    //Mark:- StoryBoard
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    //Mark:- Methods
    
    @IBAction func loginTapped(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        @IBAction func unwindToLogin(segue:UIStoryboardSegue) { }
    
    
}
