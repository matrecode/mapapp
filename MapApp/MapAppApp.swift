//
//  MapAppApp.swift
//  MapApp
//
//  Created by Hemant Rajkumar Pancheshwar on 15/02/24.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
