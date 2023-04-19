//
//  ReceiptView.swift
//  foodAppWithReceiptView
//
//  Created by Peter Deyi on 4/19/23.
//

import SwiftUI

struct ReceiptView: View {
    @EnvironmentObject var appData: ApplicationData
    var body: some View {
        VStack {
            List(appData.foodOrderData.foodItemOrders) { orderItem
                in
                
                HStack(alignment: .top) {
                    Image(orderItem.foodItem.imageName)
                        .resizable()
                        .frame(width: 100, height: 60)
                        .scaledToFill()
                    VStack(alignment: .leading, spacing: 2) {
                        Text(orderItem.foodItem.name)
                            .fontWeight(.bold)
                            .foregroundColor(.orange)
                        Text(orderItem.describeFoodItemOrder())
                    }
                    .padding(.top, 5)
                    }// end of HStack
                    
                }// end of the list
            Text("Total Payment: \(appData.foodOrderData.formattedTotalCost)")
                .padding()
            }
        }
    }


struct ReceiptView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiptView()
    }
}
