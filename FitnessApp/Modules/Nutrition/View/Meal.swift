//
//  Meal.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 18/10/25.
//
import SwiftUI

struct Meal: View {
    @State private var mealItems: [(name: String, calories: String)] = [
        ("Grilled panner", "350"),
        ("Quinoa salad", "420"),
        ("Greek yogurt", "120"),
        ("Rice dal", "350")
    ]
    var body: some View {
        VStack(spacing: 12) {
            ForEach(mealItems, id: \.name ) { index in
                HStack {
                    Text(index.name)
                        .font(.title2)
                    Spacer()
                    Text("\(index.calories) Kcal")
                        .font(.title2)
                }
            }
        }
       .padding()
    }
}

struct Meal_Preview: PreviewProvider {
    static var previews: some View {
        Meal()
    }
}
