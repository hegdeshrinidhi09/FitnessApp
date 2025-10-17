//
//  InfoBox.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 16/10/25.
//
import SwiftUI

struct InfoBox: View {
    var title: String
    var value: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
            Text(value)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .padding(.trailing)
        }
        .padding()
        .frame(width: 135, height: 150, alignment:.topLeading)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 4)
    }
}

