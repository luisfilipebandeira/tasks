//
//  User.swift
//  Tasks
//
//  Created by Luis Bandeira on 18/10/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
