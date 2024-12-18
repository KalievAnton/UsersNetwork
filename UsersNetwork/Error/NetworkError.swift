//
//  NetworkError.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

enum NetworkError: Error {
    case badURL
    case badResponse
    case badRequest
    case badData
}
