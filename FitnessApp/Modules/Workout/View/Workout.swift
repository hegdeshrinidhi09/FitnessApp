//
//  WorkoutScreen.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 16/10/25.
//
import SwiftUI

struct Workout: View {
    @State private var selectedTab = 0
    @State private var screenTitle: String = "Workout"
    let tabTitles = ["Today's Plan", "OverView", "Equipments"]

    var body: some View {
        ZStack {
            Color.blue.opacity(0.1).ignoresSafeArea()
            ScrollView {
            VStack {
                DismissButton(title: $screenTitle)
                
                Picker("Select Tab", selection: $selectedTab) {
                    ForEach(0..<tabTitles.count, id: \.self) { index in
                        Text(tabTitles[index])
                            .font(.headline)
                            .padding(.vertical, 8)
                            .frame(maxWidth: .infinity)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.top, 10)
                .padding()
                .padding(.bottom, 20)
                .scaleEffect(CGSize(width: 1.1, height: 1.5))
                
                Group {
                    switch selectedTab {
                    case 0:
                        TodaysPlan()
                    case 1:
                        Overview()
                    case 2:
                        Equipments()
                    default:
                        Text("Unknown Tab")
                    }
                }
                Spacer()
                
                Button(action: {
                    print("workout started")
                }) {
                    Text("Start Workout")
                        .font(.title)
                        .buttonStyle(PlainButtonStyle())
                        .foregroundColor(.black)
                }
                .padding()
                .frame(width: 345, height: 60, alignment: .center)
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 4)
                
                Spacer()
            }
            .padding()
            .navigationBarBackButtonHidden(true)
        }
            .scrollDisabled(false)
    }
    }
}

struct Workout_Previews: PreviewProvider {
    static var previews: some View {
        Workout()
    }
}
