//
//  EnVTest1App.swift
//  EnVTest1
//
//  Created by Sukumar.Sukumaran on 23/04/2025.
//

import SwiftUI

@main
struct EnVTest1App: App {
    @StateObject private var nav = NavState()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(nav)
        }
    }
}
