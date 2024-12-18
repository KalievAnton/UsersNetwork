//
//  PictureView.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import SwiftUI

struct PictureView: View {
    @State var viewModel = PictureViewModel()
    let layout: [GridItem] = [.init(), .init()]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(viewModel.pictures, id: \.email) { pictures in
                    NavigationLink {
                        CurrentPictureView(picture: pictures.picture)
                    } label: {
                        AsyncImage(url: URL(string: pictures.picture.thumbnail)) { image in
                            image
                                .resizable()
                        } placeholder: {
                            Image(systemName: "image")
                                .frame(width: 160, height: 160)
                                .clipped()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PictureView()
}
