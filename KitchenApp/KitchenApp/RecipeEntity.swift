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

    var id: UUID = UUID()
    var title: String = "placeholder title"

    var displayRepresentation: DisplayRepresentation {
            return DisplayRepresentation(
                title: LocalizedStringResource(stringLiteral: title),
                image: .init(named: "Shakshuka"))
        }
    
    init() {
//        self.title = "placeholder title"
    }

    public static var defaultQuery = RecipeQuery()
}

@available(iOS 26.0, *)
struct RecipeQuery: EntityQuery {
    func entities(for identifiers: [UUID]) async throws -> [RecipeEntity] {
        []
    }

    func suggestedEntities() async throws -> [RecipeEntity] {
        // Return suggested pins
        []
    }
}
