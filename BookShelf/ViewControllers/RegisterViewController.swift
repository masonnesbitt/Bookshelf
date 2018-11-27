//
//  RegisterViewController.swift
//  BookShelf
//
//  Created by Jacob Finn on 11/27/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    //Mark:- Variables
    
    
    //Mark:- Storyboard
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //Mark:- Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func registerTapped(_ sender: Any) {
        if emailTextField.text == nil || emailTextField.text == "" {
            print("Nothing put or invalid.")
            return
        }
        if passwordTextField.text == nil || passwordTextField.text == "" {
            print("Nothing put or invalid")
            return
        } else {
            
           // registerUser(email: emailTextField.text!, password: passwordTextField.text!)
        }
    }
    
    
    func registerUser(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            // ...
            guard let user = authResult?.user else {
                // Creation was unsuccessful. Something went wrong
                print(error?.localizedDescription as Any)
                return
            }
            print("User created!")
            dbm
            
            self.performSegue(withIdentifier: "unwindToLogin", sender: self)
        }
    }
    
    
}
