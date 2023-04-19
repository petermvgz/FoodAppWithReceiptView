//
//  foodAppWithReceiptViewApp.swift
//  foodAppWithReceiptView
//
//  Created by Peter Deyi on 4/19/23.
//

import SwiftUI

@main
struct _023_04_10_FoodAppWithNavigation_v1App: App {
    
    //create state object to initiate app data
    //making the cookie
    @StateObject private var appData = ApplicationData()
    // @StateObject will help change multiple screens automatically
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(appData)
        }
    }
}
