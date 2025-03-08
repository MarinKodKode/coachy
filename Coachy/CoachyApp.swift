//
//  CoachyApp.swift
//  Coachy
//
//  Created by Manuel Alejandro Hernandez Marín on 19/02/25.
//

import SwiftUI

@main
    struct CoachyApp: App {
    
    let router = Router.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(router)
        }
    }
}
