//
//  FoodModel.swift
//  foodAppWithReceiptView
//
//  Created by Peter Deyi on 4/19/23.
//

import Foundation

struct FoodModel: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var price: Double
    var description: String
}
