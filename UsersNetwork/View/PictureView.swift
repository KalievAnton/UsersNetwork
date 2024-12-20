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
                ForEach(viewModel.pictures, id: \.results[0].email) { pictures in
                    NavigationLink {
                        CurrentPictureView(picture: pictures)
                    } label: {
                        AsyncImage(url: URL(string: pictures.results[0].picture.thumbnail)) { image in
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
