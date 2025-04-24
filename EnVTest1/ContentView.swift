//
//  ContentView.swift
//  EnVTest1
//
//  Created by Sukumar.Sukumaran on 23/04/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var nav = NavState()
    
    var body: some View {
        NavigationView {
          AView()
            .environmentObject(nav)
        }
    }
}

#Preview {
    ContentView()
}
