//
//  UsersViewModel.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

@Observable
class UsersViewModel {
    var users: [ResultsUsers.User] = []
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        Task {
            let users = try await NetworkService.shared.fetchUsers()
            await MainActor.run {
                self.users = users.results
            }
        }
    }
}
