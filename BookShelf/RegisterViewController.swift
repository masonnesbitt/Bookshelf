//
//  RegisterViewController.swift
//  BookShelf
//
//  Created by Jacob Finn on 11/27/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    //Mark:- Variables
    
    
    
    
    //Mark:- StoryBoard
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    //Mark:- Methods
    
    @IBAction func registerTapped(_ sender: Any) {
        if emailTextField.text != "" || emailTextField.text != nil &&
            passwordTextField.text != "" || passwordTextField.text != nil {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (authResult, error) in
                // ...
                guard let user = authResult?.user else {
                    // Creation was unsuccessful. Something went wrong
                    print(error?.localizedDescription as Any)
                    return
                }
                // Creation was successful, we can now create the user in the database!
                self.createUserDataBase()
                print("User created!")
            }
        } else {
            print("Invalid!")
        }
    }
    
    func createUserDataBase() {
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
