//
//  User.swift
//  ToDoList
//
//  Created by Henrique on 01/09/24.
//

import Foundation

struct User: Codable {
    var profilePic: String
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
