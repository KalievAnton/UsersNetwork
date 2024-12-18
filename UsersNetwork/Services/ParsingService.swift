//
//  ParsingService.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

class ParsingService {
    static let shared = ParsingService(); private init() { }
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    
    func parse<T: Decodable>(type: T.Type, data: Data) -> T? {
        let parsed = try? decoder.decode(type, from: data)
        return parsed
    }
    
    func encode<T: Encodable>(_ object: T) -> Data? {
        let json = try? encoder.encode(object)
        return json
    }
}
