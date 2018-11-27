//
//  LoginViewController.swift
//  BookShelf
//
//  Created by Jacob Finn on 11/27/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {
    
    //Mark:- Variables
    
    
    //Mark:- StoryBoard
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //Mark:- Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func loginUser() {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            // ...
            if let userError = error {
                print(userError.localizedDescription)
                print("didn't log in")
            } else {
                print("logged in")
                self.performSegue(withIdentifier: "loggedIn", sender: self)
            }
        }
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        if emailTextField.text != "" || emailTextField.text    != nil &&
            passwordTextField.text != "" || passwordTextField.text != nil {
            loginUser()
        }
    }
    
    @IBAction func unwindToLogin(segue:UIStoryboardSegue) { }

    
}
