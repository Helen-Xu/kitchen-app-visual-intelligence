//
//  RecipeEntity.swift
//  KitchenApp
//
//  Created by Helen Xu on 8/4/25.
//

import Foundation
import AppIntents
import VisualIntelligence

@available(iOS 26.0, *)
struct RecipeEntity: AppEntity, Sendable {
    static var typeDisplayRepresentation: TypeDisplayRepresentation {
            TypeDisplayRepresentation(
                name: LocalizedStringResource("Recipe", table: "AppIntents", comment: "The type name for the recipe entity"),
                numericFormat: "\(placeholder: .int) recipes")
        }

    var id: String
    var title: String = "placeholder title"

    var displayRepresentation: DisplayRepresentation {
            return DisplayRepresentation(
                title: LocalizedStringResource(stringLiteral: title),
                image: .init(named: "Shakshuka"))
        }
    
    init(id: String) {
        self.id = id
    }

    public static var defaultQuery = RecipeQuery()
}

@available(iOS 26.0, *)
struct RecipeQuery: EntityQuery {
    func entities(for identifiers: [String]) async throws -> [RecipeEntity] {
        var results = [] as [RecipeEntity]
        for id in identifiers {
//            // return the same entity instance based on id
//            if id == "1" {
//                results.append(RecipeEntityInventory.shared.recipe1)
//            } else if id == "2" {
//                results.append(RecipeEntityInventory.shared.recipe2)
//            } else if id == "3" {
//                results.append(RecipeEntityInventory.shared.recipe3)
//            }
            
            // create a new entity instance with the same id
            results.append(RecipeEntity(id: id))
        }
        return results
    }

    func suggestedEntities() async throws -> [RecipeEntity] {
        // Return suggested pins
        []
    }
}
