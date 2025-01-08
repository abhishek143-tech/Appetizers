//
//  AlertItem.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 05/01/25.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {

    // MARK: API Error

    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the serve was invalid. Please contact support."),
                                       dismissButton: .default(Text("OK")))

    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Inavalid response from the server. Please contact support."),
                                       dismissButton: .default(Text("OK")))

    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("There was issue connecting to the server."),
                                       dismissButton: .default(Text("OK")))

    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complte the request. Please check your internet connection and try again."),
                                       dismissButton: .default(Text("OK")))

    // MARK: Accounts Alerts

    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                       message: Text("Please ensure all fields are filled."),
                                       dismissButton: .default(Text("OK")))

    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                       message: Text("Please ensure your email is valid."),
                                       dismissButton: .default(Text("OK")))

    static let userSaveSuccess = AlertItem(title: Text("Profile Saved."),
                                           message: Text("Your profile information saved successfully."),
                                           dismissButton: .default(Text("OK")))

    static let invalidUserData = AlertItem(title: Text("Profile Error."),
                                           message: Text("There was an error saving or retrieving your profile."),
                                           dismissButton: .default(Text("OK")))
}
