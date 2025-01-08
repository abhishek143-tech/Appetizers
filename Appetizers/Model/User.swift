//
//  User.swift
//  Appetizers
//
//  Created by Abhishek Dilip Dhok on 06/01/25.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthDate: Date = Date()
    var extraNapkins: Bool = false
    var frequentRefills: Bool = false
}
