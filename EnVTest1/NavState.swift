//
//  NavState.swift
//  EnVTest1
//
//  Created by Sukumar.Sukumaran on 24/04/2025.
//
import SwiftUI

class NavState: ObservableObject {
    // true means “jump back to A”
    @Published var dismissToHome: Bool = false
    
    // these drive your links to B and C:
    @Published var isAtB: Bool = false
    @Published var isAtC: Bool = false
    
    @Published var value: Int = 0
}
