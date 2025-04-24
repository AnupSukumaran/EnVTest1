//
//  AView.swift
//  EnVTest1
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//

import SwiftUI

struct AView: View {
    
    @EnvironmentObject var nav: NavState
    @Environment(\.dismiss) var dismiss
    @State var navigateToB: Bool = false
    
  var body: some View {
    VStack {
      Text("Counter: \(nav.value)")
      Text("Screen A")
      Button("Go to B") {
      //  nav.isAtB = true
          navigateToB = true
      }
      NavigationLink(destination: BView().environmentObject(nav), isActive: $navigateToB) { EmptyView() }
    }
    .onChange(of: nav.dismissToHome) { newValue in
       
        print(newValue)
        if newValue {
            dismiss()
            navigateToB = false
            nav.dismissToHome = false
        }
    }
  }
}


#Preview {
    AView()
        .environmentObject(NavState())
}
