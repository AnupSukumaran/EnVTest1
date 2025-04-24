//
//  BView.swift
//  EnVTest1
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI

struct BView: View {
  @EnvironmentObject var nav: NavState

  var body: some View {
    VStack {
      Text("Screen B")
      Button("Go to C") {
        nav.isAtC = true
      }
      NavigationLink(destination: CView(), isActive: $nav.isAtC) { EmptyView() }
    }
  }
}

#Preview {
    BView()
        .environmentObject(NavState())
}
