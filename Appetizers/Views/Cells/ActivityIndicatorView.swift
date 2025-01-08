//
//  ActivityIndicatorView.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 05/01/25.
//

import SwiftUI

struct ActivityIndicatorView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
            .scaleEffect(x: 1.5, y: 1.5, anchor: .center)
    }
}

#Preview {
    ActivityIndicatorView()
}
