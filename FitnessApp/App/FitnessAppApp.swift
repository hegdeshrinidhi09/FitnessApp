//
//  FitnessAppApp.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 14/10/25.
//

import SwiftUI

@main
struct FitnessAppApp: App {
    @State private var showHomeScreen: Bool = true
    var body: some Scene {
        WindowGroup {
            Home(showHomeScreen: $showHomeScreen)
       }
    }
}


