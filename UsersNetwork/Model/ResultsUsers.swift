//
//  ResultsUsers.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

struct ResultsUsers: Decodable {
    var results: [User]
    
    struct User: Decodable {
        let name: Name
        let gender: String
        let location: Location
        let email: String
        let phone: String
        let picture: Picture
        
        struct Name: Decodable {
            let title: String
            let first: String
            let last: String
        }
        
        struct Location: Decodable {
            let street: Street
            let city: String
            let state: String
            let country: String
            let postcode: String
            let coordinates: Coordinates
            let timezone: TimeZone
        }
        
        struct Street: Decodable {
            let name: String
            let number: Int
        }
        
        struct Coordinates: Decodable {
            let latitude: Double
            let longitude: Double
        }
        
        struct TimeZone: Decodable {
            let offset: String
            let description: String
        }
        
        struct Picture: Decodable {
            let large: String
            let medium: String
            let thumbnail: String
        }
    }
}
