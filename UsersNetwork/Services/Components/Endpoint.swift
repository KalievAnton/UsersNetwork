//
//  Endpoint.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

enum Endpoint: CustomStringConvertible {
    case users(users: String = "?inc=gender,name,location,email,phone,picture")
    case pictures(pictures: String = "?inc=picture")

    var description: String {
        switch self {
        case .users(let users):
            return "/api/\(users)"
        case .pictures(let pictures):
            return "/api/\(pictures)"
        }
    }
}
