//
//  SecondSearchTableViewCell.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/7/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit

class SecondSearchTableViewCell: UITableViewCell {

    @IBOutlet weak var bookLabel: UILabel!
    @IBOutlet weak var typeBookLabel: UILabel!
    @IBOutlet weak var bookImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
