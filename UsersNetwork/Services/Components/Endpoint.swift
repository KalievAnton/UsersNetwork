//
//  Endpoint.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

enum Endpoint: CustomStringConvertible {
    case users(users: String = "?inc=gender,name,location,email,phone,picture")

    var description: String {
        switch self {
        case .users(let users):
            return "/api/\(users)&results=10"
        }
    }
}
