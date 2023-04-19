//
//  ApplicationData.swift
//  foodAppWithReceiptView
//
//  Created by Peter Deyi on 4/19/23.
//

import Foundation

class ApplicationData: ObservableObject {
    //ObservableObject makes the class visible to other files or other screens
    //anything you want to share has to be published
    @Published var foodData: [FoodModel]
    @Published var foodOrderData: FoodOrder
    
    init() {
        foodData = [
            FoodModel(name: "Pepperoni Pizza", imageName: "pizza", price: 12.99,
                      description: "Best Italian Pizza: Pepperoni, tomato, Olive and Basil, with sauce made from freshly peeled tomatoes and a blend of savory herbs."),
            FoodModel(name: "Burger California", imageName: "burger", price: 15.99, description: "Juicy, fire-grilled burger, served with french fries and mashed potato"),
            FoodModel(name: "Chicken Noodle Soup", imageName: "noodle", price: 17.99, description: "Vietnamese chicken noodle soup with a deeply flavored chicken broth, flat rice noodles, and a delicious array of toppings."),
            FoodModel(name: "Pesto Pasta", imageName: "pasta", price: 19.99, description: "Sauteed chicken, fargalle pasta and cherry tomatoes, all smothered in a rich and luscious cream and basil pesto sauce."),
            FoodModel(name: "Signature Steak", imageName: "steak", price: 23.99, description: "A thick cut rib eye steak, seasoned and chargrilled to perfection.")
            
        ]
        
        foodOrderData = FoodOrder(foodItemOrders: [ ])
        
    }
}
