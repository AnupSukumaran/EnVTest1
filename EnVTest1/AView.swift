//
//  AView.swift
//  EnVTest1
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI

struct AView: View {
  @EnvironmentObject var nav: NavState

  var body: some View {
    VStack {
      Text("Screen A")
      Button("Go to B") {
        nav.isAtB = true
      }
      NavigationLink(destination: BView(), isActive: $nav.isAtB) { EmptyView() }
    }
  }
}


#Preview {
    AView()
        .environmentObject(NavState())
}
