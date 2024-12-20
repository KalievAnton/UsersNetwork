//
//  PictureViewModel.swift
//  UsersNetwork
//
//  Created by Тони on 18.12.2024.
//

import Foundation

@Observable
class PictureViewModel {
    var pictures: [ResultsUsers] = []

    init() {
        fetchData()
    }
    
    func fetchData() {
        Task {
            let pictures = try await NetworkService.shared.fetchPictures()
            await MainActor.run {
                self.pictures = pictures
            }
            
        }
    }
}
