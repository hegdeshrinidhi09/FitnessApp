//
//  HomeScreen.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 14/10/25.
//
import SwiftUI

struct Home: View {
    @Binding var showHomeScreen: Bool
    var body: some View {
        NavigationStack {
            ZStack  {
                Color.blue.opacity(0.1).ignoresSafeArea()
                ScrollView {
                VStack (alignment: .leading) {
                    Text("Welcome Back Bella!")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                        .padding(.top, 30)
                    VStack(alignment: .leading) {
                        Text("Today's Summary")
                            .font(.headline)
                            .bold()
                        HStack {
                            InfoBox(title: "Steps", value: "\(8421)")
                            InfoBox(title: "Calories", value: "1250kcal")
                        }
                        .padding(.bottom)
                        NavigationLink(destination: Workout()) {
                            ActionTile(title: "Workout", image: Image("workout"))
                        }
                        .buttonStyle(PlainButtonStyle())
                        NavigationLink(destination: MindBody()) {
                        ActionTile(title: "Meditation", image: Image("meditation"))
                        }
                        .buttonStyle(PlainButtonStyle())
                        NavigationLink(destination: Nutrition()) {
                            ActionTile(title: "Nutrition", image: Image("nutrition"))
                        }
                        .buttonStyle(PlainButtonStyle())
                        ActionTile(title: "Progress", image: Image("progress"))
                    }
                    .padding()
                    Spacer()
                }
            }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    @State static var showHomeScreen: Bool = false
    static var previews: some View {
        NavigationStack {
            Home(showHomeScreen: .constant(true))
        }
    }
}
