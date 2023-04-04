//
//  Design_Travel_AppApp.swift
//  Design Travel App
//
//  Created by Max Prx on 05/04/2023.
//

import SwiftUI

@main
struct Design_Travel_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
