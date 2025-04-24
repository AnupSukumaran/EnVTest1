//
//  BView.swift
//  EnVTest1
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI

struct BView: View {
    
    @EnvironmentObject var nav: NavState
    @State var navigateToC: Bool = false
    
  var body: some View {
    VStack {
      Text("Screen B")
      Button("Go to C") {
        //nav.isAtC = true
          navigateToC = true
          //nav.dismissToHome = true
          nav.value += 1
      }
      NavigationLink(destination: CView().environmentObject(nav), isActive: $navigateToC
      ) { EmptyView() }
    }
  }
}

#Preview {
    BView()
        .environmentObject(NavState())
}
