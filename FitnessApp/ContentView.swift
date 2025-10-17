//
//  ContentView.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 14/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showHomeScreen: Bool = true
    
    var body: some View {
        Home(showHomeScreen: $showHomeScreen)
    }
}

#Preview {
    ContentView()
}
