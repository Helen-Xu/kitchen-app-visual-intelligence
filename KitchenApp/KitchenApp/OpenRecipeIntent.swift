//
//  OpenRecipeIntent.swift
//  KitchenApp
//
//  Created by Helen Xu on 8/4/25.
//

import AppIntents
import Foundation
import VisualIntelligence

@available(iOS 26.0, *)
struct OpenRecipeIntent: OpenIntent {
    static var title: LocalizedStringResource = "Open recipe"
    
    @Parameter(title: "Recipe")
    var target: RecipeEntity
    
    func perform() async throws -> some IntentResult {
        
        return .result()
    }
}
