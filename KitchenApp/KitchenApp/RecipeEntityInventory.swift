//
//  RecipeEntityInventory.swift
//  KitchenApp
//
//  Created by Helen Xu on 8/15/25.
//

import Foundation

class RecipeEntityInventory: NSObject {
    static let shared = RecipeEntityInventory()
    
    let recipe1 = RecipeEntity(id: "1")
    let recipe2 = RecipeEntity(id: "2")
    let recipe3 = RecipeEntity(id: "3")
    
    private override init() {
        super.init()
    }
}
