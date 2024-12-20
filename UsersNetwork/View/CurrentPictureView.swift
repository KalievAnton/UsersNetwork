//
//  CurrentPictureView.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import SwiftUI

struct CurrentPictureView: View {
    let picture: ResultsUsers
    var body: some View {
        AsyncImage(url: URL(string: picture.results[0].picture.thumbnail))
    }
}

