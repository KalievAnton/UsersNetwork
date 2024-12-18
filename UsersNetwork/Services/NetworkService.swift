//
//  NetworkService.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

actor NetworkService {
    static let shared = NetworkService(); private init() { }
    private let session = URLSession.shared
    
    func fetchUsers() async throws -> [ResultsUsers.User] {
        guard let url = URLManager.shared.createURL(endpoint: .users()) else { throw NetworkError.badURL }
        let (data, response) = try await session.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw NetworkError.badResponse }
        guard let users = ParsingService.shared.parse(type: [ResultsUsers.User].self,
                                                      data: data) else { throw NetworkError.badData }
        return users
    }
    
    func fetchPictures() async throws -> [ResultsUsers.User] {
        guard let url = URLManager.shared.createURL(endpoint: .pictures()) else { throw NetworkError.badURL }
        let (data, response) = try await session.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw NetworkError.badResponse }
        guard let pictures = ParsingService.shared.parse(type: [ResultsUsers.User].self,
                                                      data: data) else { throw NetworkError.badData }
        return pictures
    }
}
