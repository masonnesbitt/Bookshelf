//
//  AddBookViewController.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
import UIKit

class AddBookViewController: UIViewController {
    
    
    @IBOutlet weak var bookTitleField: UITextField!
    
    @IBOutlet weak var bookDescField: UITextField!
    
    @IBOutlet weak var bookLocationField: UITextField!
    
    @IBOutlet weak var addBookButton: UIButton!
    
    @IBOutlet weak var bookImageSelector: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tap to remove keyboard
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    func showError() {
        let newAlert = UIAlertController(title: "Need Text", message: "Please Enter TEXT", preferredStyle: .alert)
        let closeAction = UIAlertAction(title: "Resume", style: .default, handler: nil)
        newAlert.addAction(closeAction)
        self.present(newAlert, animated: true, completion: nil)
        
    }
        
        @IBAction func submitButtonTapped(_ sender: Any) {
            
            
            guard let title = bookTitleField.text, title.trimmingCharacters(in: .whitespacesAndNewlines) != ""
                else {
                    showError()
                    return
                    
            }
            guard let description = bookDescField.text, description.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
                showError()
                return
                
            }
            
            
            let newBook = Book()
            newBook.bookTitle = title
            newBook.bookDescription = description
            newBook.bookPicture = UIImage(named: "bookImage")!
            
            BookManager.sharedInstance.addBook(book: newBook)
    
    
    
    }
}
