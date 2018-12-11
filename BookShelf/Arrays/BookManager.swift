//
//  BookManager.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
import RealmSwift

class BookManager {
    
    static let sharedInstance = BookManager()
    
    
    private init() {
        books = realm.objects(Task.self)
    }
    private var  books: Results<Book>!
    
    let realm = try! Realm()
    func getBookCount()-> Int {
        return books.count
    }
    
    func getBook(at index: Int) -> Book {
        return books[index]
    }
    
    func addBook(book: Book) {
        try! realm.write {
            realm.add(book)
        }
    }
    
    func removebook(at index: Int) {
        try! realm.write {
            realm.delete(getBook(at: index))
        }
    }
    
    
    
    
        
        
        
}

