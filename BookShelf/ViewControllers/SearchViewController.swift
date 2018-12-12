//
//  SearchViewController.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/7/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func unwindToBookTable(segue:UIStoryboardSegue) {
    }
    var currentBook: Book!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            ViewBookViewController {
            destination.bookOwner = currentBook
            destination.bookTitle = currentBook
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return BookManager.sharedInstance.getBookCount()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        currentBook = BookManager.sharedInstance.getBook(at: indexPath.row)
        self.performSegue(withIdentifier: "ShowBookDetails", sender: self)
    }
    
    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "firstCustomCell")
            let recipeCell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! FirstSearchTableViewCell
            
            recipeCell.recipeLabel.text = RecipeManager.sharedInstance.getRecipe(at: indexPath.row).recipeTitle
            recipeCell.typeRecipeLabel.text = "Recipe"
            recipeCell.recipeImage.image = UIImage(named: "recipeImage")!
            return
        }
        else if indexPath.row == 1 {
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "secondCustomCell")
            let bookCell = tableView.dequeueReusableCell(withIdentifier: "bookCell") as! SecondSearchTableViewCell
            
            bookCell.bookLabel.text = BookManager.sharedInstance.getBook(at: indexPath.row).bookTitle
            bookCell.typeBookLabel.text = "Book"
            bookCell.bookImage.image = UIImage(named: "bookImage")!
            
            return
        }
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)-> CGFloat {
        return 43.5
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    

    
}
