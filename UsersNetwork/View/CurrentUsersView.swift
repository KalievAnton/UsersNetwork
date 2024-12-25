//
//  CurrentUsersView.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import SwiftUI

struct CurrentUsersView: View {
    let user: ResultsUsers.User
    var body: some View {
        AsyncImage(url: URL(string: user.picture.medium))
    }
}

