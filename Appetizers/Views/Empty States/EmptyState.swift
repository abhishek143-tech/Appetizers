//
//  SwiftUIView.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 07/01/25.
//

import SwiftUI

struct EmptyState: View {

    let imageName: String
    let message: String

    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()

            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }

        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "Your cart is empty")
}
