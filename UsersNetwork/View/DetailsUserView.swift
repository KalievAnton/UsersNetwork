//
//  DetailsUserView.swift
//  UsersNetwork
//
//  Created by Тони on 24.12.2024.
//

import SwiftUI

struct DetailsUserView: View {
    @State var viewModel: DetailsUserViewModel
    @State private var showSheet = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(viewModel.user.name.title) \(viewModel.user.name.first) \(viewModel.user.name.last)")
                .font(.title.bold())
            Image(viewModel.user.picture.medium)
                .resizable()
                .scaledToFit()
                .frame(width: 340,height: 250)
                .clipShape(.rect(cornerRadius: 20))
                .padding(.bottom, 40)
            VStack(alignment: .leading) {
                Text("Address: \(viewModel.user.location.country), \(viewModel.user.location.state), \n\(viewModel.user.location.city), \(viewModel.user.location.street.name), \(viewModel.user.location.street.number)")
                    .padding(.bottom)
                Text("email:")
                    .font(.callout.bold())
                Text(viewModel.user.email)
                    .padding(.bottom, 11)
                Text("phone:")
                    .font(.callout.bold())
                Text(viewModel.user.phone)
            }
        }
        .offset(y: -100)
    }
}
