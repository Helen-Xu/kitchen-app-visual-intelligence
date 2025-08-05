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
        let r1 = RecipeEntity()
        let r2 = RecipeEntity()
        let r3 = RecipeEntity()
        return [r1, r2, r3]
    }
}
