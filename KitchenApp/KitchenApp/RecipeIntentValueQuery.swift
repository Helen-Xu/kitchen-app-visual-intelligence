//
//  RecipeIntentValueQuery.swift
//  KitchenApp
//
//  Created by Helen Xu on 8/4/25.
//

import Foundation
import AppIntents
import VisualIntelligence

@available(iOS 26.0, *)
struct RecipeIntentValueQuery: IntentValueQuery {
    func values(for input: SemanticContentDescriptor) async throws -> [RecipeEntity] {
        let r1 = RecipeEntityInventory.shared.recipe1
        let r2 = RecipeEntityInventory.shared.recipe2
        let r3 = RecipeEntityInventory.shared.recipe3
        return [r1, r2, r3]
    }
}
