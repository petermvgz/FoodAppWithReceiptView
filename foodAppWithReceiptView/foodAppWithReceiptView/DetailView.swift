//
//  DetailView.swift
//  foodAppWithReceiptView
//
//  Created by Peter Deyi on 4/19/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var appData: ApplicationData
    @State var foodItem: FoodModel
    @State private var path = NavigationPath()
    @State private var unitStr = "1"
    var body: some View {
        NavigationStack(path: $path) {
            VStack{
                Image("\(foodItem.imageName)")
                    .resizable()
                    .frame(width: 300, height: 200, alignment: .center)
                    .scaledToFill()
                Text("\(foodItem.name)")
                    .font(.caption)
                    .foregroundColor(.orange)
                Text("$\(foodItem.price.formatted())")
                // add description for food
                Text(foodItem.description)
                    .font(.caption)
                    .frame(width: 300)
                    .padding(.top, 10)
                
                // add unit text field
                HStack {
                    Text("Quantity")
                        .padding(.trailing, 10)
                    TextField ("1", text: $unitStr)
                }
                .frame(width: 300)
                .padding()
                // add button to navigate to receipt
                Button {
                    // turn unitStr into int
                    let unit = Int(unitStr)!
                    
                    // create foodItemOrder to be appended
                    let foodItemOrder = FoodItemOrder(foodItem: foodItem, unit: unit)
                    
                    // append to the order
                    appData.foodOrderData.appendFoodItemOrder(foodItemOrder: foodItemOrder)
                    path.append("ReceiptView")
                } label: {
                    Text("Order This Dish")
                }
                .buttonStyle(.borderedProminent)
                .navigationDestination(for: String.self) { view in
                    if view == "ReceiptView" {
                        // display receipt view
                        ReceiptView()
                    }
                }
                
            }
        }
        
        
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
