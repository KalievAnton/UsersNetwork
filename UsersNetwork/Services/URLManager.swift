//
//  URLManager.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

class URLManager {
    static let shared = URLManager(); private init() { }
    private let httpsGateway: Gateway = .https
    private let server: Server = .develop
    
    func createURL(endpoint: Endpoint) -> URL? {
        let urlStr = httpsGateway.rawValue + server.rawValue + endpoint.description
        return URL(string: urlStr)
    }
}
