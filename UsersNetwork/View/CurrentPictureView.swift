//
//  CurrentPictureView.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import SwiftUI

struct CurrentPictureView: View {
    let picture: ResultsUsers.User.Picture
    var body: some View {
        AsyncImage(url: URL(string: picture.thumbnail))
    }
}

