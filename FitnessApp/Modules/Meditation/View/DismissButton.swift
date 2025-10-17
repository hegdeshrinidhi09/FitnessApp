//
//  DismissButton.swift
//  FitnessApp
//
//  Created by Shrinidhi Hegde on 16/10/25.
//
import SwiftUI

struct DismissButton: View {
    @Environment(\.dismiss) var dismiss
    @Binding var title: String
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.largeTitle)
                        .foregroundColor(.black)
                }
                Spacer()
                Text(title)
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.black)
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 16)
            
        }
      //  .padding()
    }
}
