//
//  User.swift
//  JsonService
//
//  Created by JIDTP1408 on 12/02/25.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
}
