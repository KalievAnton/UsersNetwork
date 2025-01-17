//
//  UsersView.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import SwiftUI

struct UsersView: View {
    @State var viewModel = UsersViewModel()
    let layout: [GridItem] = [.init(), .init()]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(viewModel.users, id: \.email) { user in
                    NavigationLink {
                        DetailsUserView(viewModel: .init(user: user))
                    } label: {
                        AsyncImage(url: URL(string: user.picture.thumbnail)) { image in
                            image
                                .resizable()
                        } placeholder: {
                            Image(systemName: "thumbnail")
                                .frame(width: 150, height: 160)
                        }
                        .scaledToFit()
                        .clipShape(.rect(cornerRadius: 10))
                        .padding(2)
                    }
                }
            }
        }
    }
}

#Preview {
    UsersView()
}
