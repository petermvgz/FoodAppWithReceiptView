//
//  ContentView.swift
//  foodAppWithReceiptView
//
//  Created by Peter Deyi on 4/19/23.
//

import SwiftUI

struct ContentView: View {
    
    //take advantage of environment data
    @EnvironmentObject var appData: ApplicationData
        // Receives information from @StateObject
    var body: some View {
        NavigationStack {
            List(appData.foodData) { dish in
                NavigationLink {
                    //use the detail view we built ealier
                    DetailView(foodItem: dish)
                } label: {
                    HStack {
                        Image("\(dish.imageName)")
                            .resizable()
                            .frame(width: 100, height: 60)
                            .scaledToFill()
                        VStack(alignment: .leading, spacing: 2.0) {
                            Text("\(dish.name)")
                                .fontWeight(.bold)
                                .foregroundColor(.orange)
                        }.padding(.top, 5)
                        Spacer()
                    }
                    
                }//end navigation link
            }//end list
            .navigationTitle("Food Menu")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }//end navigation stack
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
