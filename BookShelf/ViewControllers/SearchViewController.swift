//
//  SearchViewController.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/7/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit
import RealmSwift

class SearchViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBox: UISearchBar!
    
    @IBAction func unwindToBookTable(segue:UIStoryboardSegue) {
    }
    var currentBook: Book!
    
   override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    
    
}
