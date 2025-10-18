//
//  Equipments.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 16/10/25.
//
import SwiftUI

import SwiftUI

struct Equipments: View {
    @State private var selectedItems: [String: Bool] = [
        "Dumbbells": false,
        "Yoga mat": false,
        "Resistance bands": false,
        "Plates": false,
        "Kettlebell": false,
        "Jump rope": false,
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Equipments")
                .font(.title)
                .padding(.bottom)
            ForEach(selectedItems.keys.sorted(), id: \.self) { item in
                Toggle(isOn: Binding(
                    get: { selectedItems[item] ?? false },
                    set: { selectedItems[item] = $0 }
                )) {
                    Text(item)
                        .font(.title2)
                }
            }
        }
        .padding()
    }
}

struct Equipments_Previews: PreviewProvider {
    static var previews: some View {
        Equipments()
    }
}
