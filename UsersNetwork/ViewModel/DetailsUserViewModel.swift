//
//  DetailsUserViewModel.swift
//  UsersNetwork
//
//  Created by Тони on 25.12.2024.
//

import Foundation

@Observable

final class DetailsUserViewModel {
    var user: ResultsUsers.User
    
    init(user: ResultsUsers.User) {
        self.user = user
    }
}
