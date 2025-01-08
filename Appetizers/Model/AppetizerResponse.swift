//
//  Appetizer.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 05/01/25.
//

import Foundation

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct Appetizer: Decodable, Identifiable {
    let imageURL: String
    let protein: Int
    let name: String
    let price: Double
    let calories: Int
    let carbs: Int
    let id: Int
    let description: String
}

struct MockData {

    static let sampleAppetizer = Appetizer(imageURL: "",
                                           protein: 99,
                                           name: "test",
                                           price: 89.55,
                                           calories: 483,
                                           carbs: 433,
                                           id: 001,
                                           description: "This is dummy description.")


    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]

    static let orderItemOne = Appetizer(imageURL: "",
                                 protein: 99,
                                 name: "Test item 1",
                                 price: 89.55,
                                 calories: 483,
                                 carbs: 433,
                                 id: 001,
                                 description: "This is dummy description.")

    static let orderItemTwo = Appetizer(imageURL: "",
                                         protein: 99,
                                         name: "Test item 2",
                                         price: 89.55,
                                         calories: 483,
                                         carbs: 433,
                                         id: 002,
                                         description: "This is dummy description.")

    static let orderItemThree = Appetizer(imageURL: "",
                                         protein: 99,
                                         name: "Test item 3",
                                         price: 89.55,
                                         calories: 483,
                                         carbs: 433,
                                         id: 003,
                                         description: "This is dummy description.")

    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
