//
//  MindBody.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 16/10/25.
//
import SwiftUI

struct MindBody: View {
    @State private var screenTitle: String = "Mind Body"
    @State private var wellnessScore: Int = 72
    @State private var stressLevel: Int = 7
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue.opacity(0.1).ignoresSafeArea()
                ScrollView {
                    VStack(alignment: .center) {
                        DismissButton(title: $screenTitle)
                        VStack(alignment: .leading) {
                            ActionTile(title: "Guided meditation", image: Image("meditation"))
                                .padding(.bottom)
                            ActionTile(title: "Breath work", image: Image("breathWork"))
                                .padding(.bottom)
                            VStack (alignment: .leading){
                                Text("Stress level check")
                                    .font(.headline)
                                    .padding(.horizontal)
                                    .padding(.top)
                                Slider(value: Binding(
                                    get: { Double(self.stressLevel) },
                                    set: { self.stressLevel = Int($0) }
                                ), in: 0...10, step: 1)
                                .accentColor(.black)
                                .padding(.horizontal)
                            }
                            VStack (alignment: .leading){
                                Text("Daily mental wellness score")
                                    .font(.headline)
                                    .padding()
                                VStack {
                                    Text("\(wellnessScore)")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.black)
                                }
                                .frame(width: 60, height: 60, alignment:.center)
                                .background(Color.white)
                                .cornerRadius(12)
                                .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 4)
                                .padding(.horizontal)
                            }
                        }
                        .padding(.vertical, 20)
                    }
                    .padding()
                    .navigationBarBackButtonHidden(true)
                }
                .scrollDisabled(true)
            }
    }
    }
}

struct MindBody_Previews: PreviewProvider {
    static var previews: some View {
        MindBody()
}}
