//
//  RecipeManager.swift
//  BookShelf
//
//  Created by Mason Nesbitt on 12/11/18.
//  Copyright © 2018 Jacob Finn. All rights reserved.
//

import Foundation
import RealmSwift

class RecipeManager {
    
    static let sharedInstance = RecipeManager()
    
    private init() {
        recipes = realm.objects(Recipe.self)
    }
    private var  recipes: Results<Recipe>!
    
    let realm = try! Realm()
    func getRecipeCount()-> Int {
        return recipes.count
    }
    
    func getRecipe(at index: Int) -> Recipe {
        return recipes[index]
    }
    
    func addRecipe(recipe: Recipe) {
        try! realm.write {
            realm.add(recipe)
        }
    }
    
    func removeRecipe(at index: Int) {
        try! realm.write {
            realm.delete(getRecipe(at: index))
        }
    }
}
