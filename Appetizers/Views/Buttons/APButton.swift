//
//  APButton.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 06/01/25.
//

import SwiftUI

struct APButton: View {

    let title: LocalizedStringKey

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(Color.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test")
}
