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
    var db: Firestore!
    
    
    //Mark:- StoryBoard
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    //Mark:- Methods
    
    @IBAction func loginTapped(_ sender: Any) {
        if emailTextField.text != nil && emailTextField.text != "" &&
            passwordTextField.text != nil && passwordTextField.text != "" {
            loginUser()
        }
    }
    
    func loginUser() {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            // ...
            if let userError = error {
                print("didn't log in")
                print(userError.localizedDescription)
            } else {
                print("logged in")
               self.performSegue(withIdentifier: "loggedIn", sender: self)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        @IBAction func unwindToLogin(segue:UIStoryboardSegue) { }
    
    
}
