//
//  TableViewCell.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/7/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import UIKit

class FirstSearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var recipeLabel: UILabel!
    @IBOutlet weak var typeRecipeLabel: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
