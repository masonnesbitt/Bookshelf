//
//  Book.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
import RealmSwift



class Book: Object {
    
    
//    @objc dynamic var bookPicture:UIImageView = UIImage()
    @objc dynamic var bookTitle:String = ""
    @objc dynamic var bookDescription:String = ""
    @objc dynamic var bookOwner:String = ""
    @objc dynamic var bookLocation:String = ""

}
