//
//  FoodOrder.swift
//  foodAppWithReceiptView
//
//  Created by Peter Deyi on 4/19/23.
//

import Foundation

struct FoodOrder {
    var foodItemOrders: [FoodItemOrder]
    var formattedTotalCost: String {
        let totalCost = getTotalCost()
        return "$\(totalCost.formatted())"
    }
    // derived varible - automatically calculate from the fooditemOrder
    
    //update this method so that units could be modified with repeating orders
    mutating func appendFoodItemOrder(foodItemOrder: FoodItemOrder) {
        // Checks if you already ordered the food order
        var unitIsUpdated = false
        //go through each ordered item to see if it is the same as the current order
        for index in 0 ..< foodItemOrders.count {
            if foodItemOrders[index].foodItem.name == foodItemOrder.foodItem.name
            {
                foodItemOrders[index].unit += foodItemOrder.unit
                unitIsUpdated = true
            }//end of if statement
        }//end of your for loop
        
        //only append when there is no repeats
        if !unitIsUpdated {
            foodItemOrders.append(foodItemOrder)
        }
    }
    
    func getTotalCost() -> Double {
        var totalCost = 0.0
        for each in foodItemOrders {
            totalCost = totalCost + each.getItemCost()
        }
        return totalCost
    }
}
