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
                VStack(alignment: .leading) {
                    DismissButton(title: $screenTitle)
                    VStack(alignment: .leading) {
                        HStack(spacing: 30) {
                            Image("meal")
                                .resizable()
                                .frame(width: 60, height: 50)
                                .cornerRadius(8)
                            Text("Meal Suggestion")
                                .font(.title)
                                .padding(.bottom)
                        }
                        Meal()
                            .frame(maxWidth: .infinity)
                        VStack(alignment: .leading, spacing: 16){
                            HStack(spacing: 30) {
                                Image("calorieTracker")
                                    .resizable()
                                    .frame(width: 60, height: 50)
                                    .cornerRadius(8)
                                Text("Calorie Tracker")
                                    .font(.title)
                            }
                            Button(action: {
                                print("Meal added")
                            }) {
                                Text("Add Meal")
                                    .font(.title)
                                    .foregroundColor(.black)
                            }
                            .padding()
                            .frame(width: 260, height: 40)
                            .background(Color.white)
                            .cornerRadius(12)
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 4)
                            .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .padding(.vertical)
                    }
                    .padding()
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
