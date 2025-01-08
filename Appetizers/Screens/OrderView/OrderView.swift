//
//  OrderView.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 05/01/25.
//

import SwiftUI

struct OrderView: View {

    @State private var orderItems = MockData.orderItems

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(MockData.orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete { indexset in
                            orderItems.remove(atOffsets: indexset)
                        }
                    }
                    .listStyle(.plain)

                    Button {

                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 25)
                }

                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your cart. \n Please add items to your cart.")
                }

            }
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}


// YT: 08:02
