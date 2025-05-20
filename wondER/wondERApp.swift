//
//  wondERApp.swift
//  wondER
//
//  Created by ABHINAV ANAND  on 21/05/25.
//

import SwiftUI

@main
struct wondERApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
