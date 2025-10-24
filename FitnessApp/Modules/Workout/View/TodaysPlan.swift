//
//  TodaysPlan.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 16/10/25.
//
import SwiftUI

struct TodaysPlan: View {
    
    let warmUpDuration = "5 min"
    let coolDownDuration = "10 min"
    let mainWorkout: [(name: String, reps: String)] = [
        ("Squats", "3 × 10"),
        ("Push up", "3 × 10"),
        ("Dumbbell row", "3 × 10"),
        ("Crunches", "3 × 15")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Text("Warm up")
                    .font(.title)
                    .padding(.bottom)
                Spacer()
                Text(warmUpDuration)
                    .font(.title)
            }
            VStack(alignment: .leading) {
                ForEach(mainWorkout, id: \.name) { exercise in
                    HStack {
                        Text(exercise.name)
                            .font(.title2)
                        Spacer()
                        Text(exercise.reps)
                            .font(.title2)
                    }
                }
            }
            .padding(.bottom)
            HStack{
                Text("Cool Down")
                    .font(.title)
                    .padding(.bottom)
                Spacer()
                Text(coolDownDuration)
                    .font(.title)
              
            }
        }
        .padding()
    }
}

struct TodaysPlan_Previews: PreviewProvider {
    static var previews: some View {
        TodaysPlan()
}}
