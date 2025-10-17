//
//  Nutrition.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 17/10/25.
//
import SwiftUI

struct Nutrition: View {
    @State private var screenTitle: String = "Nutrition"
    var body: some View {
        ZStack {
            Color.blue.opacity(0.1).ignoresSafeArea()
            ScrollView {
                VStack {
                    DismissButton(title: $screenTitle)
                    Text("Hi")
                }
                .padding()
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct Nutrition_Previews: PreviewProvider {
    static var previews: some View {
        Nutrition()
    }
}
