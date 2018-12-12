//
//  BookDetailsViewController.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit

class ViewBookViewController: UIViewController {

    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookLocationLabel: UILabel!
    @IBOutlet weak var bookOwnersName: UIButton!
    @IBOutlet weak var bookImage: UIImageView!
    // Matches class and task
    var bookTitle: Book!
    var bookLocation: Book!
    var bookOwner: Book!
    var bookPicture: Book!


    override func viewDidLoad() {
        super.viewDidLoad()
        // show task title and description
        bookTitleLabel.text = bookTitle.bookTitle
        bookLocationLabel.text = bookLocation.bookLocation
        bookOwnersName.setTitle(bookOwner.bookOwner, for: .normal)
    }
}
