//
//  FoodItemOrder.swift
//  foodAppWithReceiptView
//
//  Created by Peter Deyi on 4/19/23.
//

import Foundation

struct FoodItemOrder: Identifiable {
    let id = UUID()
    // has to be identifiable
    var foodItem: FoodModel
    var unit: Int
    
    func getItemCost() -> Double {
            return foodItem.price * Double(unit)
    }
    
    func formatItemCost() -> String {
            let itemCost = getItemCost()
            return "$"+String(itemCost.formatted())
    }
    
    func describeFoodItemOrder() -> String {
            return "\(foodItem.price) x \(unit): \(formatItemCost())"
    }
}
