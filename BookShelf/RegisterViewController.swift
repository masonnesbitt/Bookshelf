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
    let db = Firestore.firestore()
    
    
    
    //Mark:- StoryBoard
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    
    //Mark:- Methods
    
    @IBAction func registerTapped(_ sender: Any) {
        // Before we trouble the data base with a request, we make sure that the email and password fields
        // aren't empty and contain actual data.
        if emailTextField.text != "" && emailTextField.text != nil &&
            passwordTextField.text != "" && passwordTextField.text != nil {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (authResult, error) in
                // ...
                guard let user = authResult?.user else {
                    // Creation was unsuccessful. Something went wrong
                    let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Return", style: .default, handler: { action in
                    }))
                    self.present(alert, animated: true, completion: nil)
                    return
                    print(error?.localizedDescription as Any)
                }
                print(user) // silence warning
                // Creation was successful, we can now create the user in the database!
                self.createUserDataBase(email: self.emailTextField.text!)
                print("User created!")
            }
        } else {
            print("Invalid!")
        }
    }
    
    func createUserDataBase(email: String) {
        navigationController?.setNavigationBarHidden(true, animated: true)
        db.collection("users").document(email).setData([
            // Here we are setting up the information inside of the database.
            "displayName" : "ChangeMe!"
        ]) { (error) in
            if error != nil {
                // An error occured before the user data could be finalized. Captured here.
                print(error?.localizedDescription)
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Return", style: .default, handler: { action in
                }))
                self.present(alert, animated: true, completion: nil)
                return
            } else {
                // We don't want the user to be able to go back while the account is being created!
                self.navigationController?.setNavigationBarHidden(false, animated: true)
                print("Data created!")
                self.performSegue(withIdentifier: "unwindToLogin", sender: self)
                // If there was no error and the user was succesfully registered, we should force the user
                // back to login here with an unwind.
            }
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
