//
//  ActionTitle.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 16/10/25.
//
import SwiftUI

struct ActionTile: View {
    var title: String
    var image: Image? = nil
    var body: some View {
        HStack {
            if let image = image {
                image
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(8)
            }
            Text(title)
                .font(.headline)
                .padding(.leading, 10)
        }
        .padding()
        .frame(width: 345, height: 60, alignment: .leading)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 4)
    }
}


