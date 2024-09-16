//
//  WeatherMapAppApp.swift
//  WeatherMapApp
//
//  Created by JungWoo Choi on 16/9/2024.
//

import SwiftUI

@main
struct WeatherMapAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
