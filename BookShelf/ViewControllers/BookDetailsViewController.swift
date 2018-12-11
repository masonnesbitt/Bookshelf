//
//  BookDetailsViewController.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit

class BookDetailsViewController: UIViewController {
    @IBOutlet weak var taskTitleOnDescriptionScreen: UILabel!
    
    @IBOutlet weak var taskDescriptionLabelThing: UILabel!
    // Matches class and task
    var taskDescription: Task!
    var taskTitle: Task!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // show task title and description
        taskDescriptionLabelThing.text = taskDescription.taskDescription
        taskTitleOnDescriptionScreen.text = taskTitle.taskTitle
    }
}
