//
//  DetailsUserView.swift
//  UsersNetwork
//
//  Created by Тони on 24.12.2024.
//

import SwiftUI

struct DetailsUserView: View {

    var body: some View {
        VStack(alignment: .leading) {
            Text("Имя пользователя")
                .font(.title.bold())
            Image("large")
                .resizable()
                .frame(width: 340,height: 250)
                .clipShape(.rect(cornerRadius: 20))
                .padding(.bottom, 40)
            VStack(alignment: .leading) {
                    Text("Address: 63104, United States, Michigan, \nBillings, Valwood Pkwy, 8929")
                        .padding(.bottom)
                    Text("email:")
                        .font(.callout.bold())
                    Text("jennie.nichols@example.com")
                    .padding(.bottom, 11)
                    Text("phone:")
                        .font(.callout.bold())
                    Text("(272) 790-0888")
            }
        }
        .offset(y: -100)
    }
}

#Preview {
    DetailsUserView()
}
