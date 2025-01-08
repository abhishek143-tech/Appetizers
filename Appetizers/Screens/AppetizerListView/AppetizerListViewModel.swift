//
//  AppetizerViewModel.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 05/01/25.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {

    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?

    func getAppetizers() {
        self.isLoading = true
        NetworkManager.shared.getAppetizers { [weak self] result in

            guard let self else {
                return
            }

            DispatchQueue.main.async {
                self.isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse

                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL

                    case .invalidData:
                        self.alertItem = AlertContext.invalidData

                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete

                    }
                }
            }
        }
    }

}
