//
//  ContentView.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import SwiftUI

struct RouterView: View {
    var body: some View {
        NavigationStack {
            UsersView(viewModel: .init())
                .navigationTitle("Пользователи")
        }
    }
}

#Preview {
    RouterView()
}
