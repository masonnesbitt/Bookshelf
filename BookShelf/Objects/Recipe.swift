//
//  Recipe Array.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/7/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit


class Recipe: Object {
    


    @objc dynamic var recipeTitle:String = ""
    @objc dynamic var recipeDesc:String = ""
    @objc dynamic var recipePicture:UIImage = UIImage(named: "recipeImage")
    @objc dynamic var recipeIngrediants:String = ""
    @objc dynamic var recipeProcedure:String = ""


}



