//
//  PopularTVViewModel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

final class PopularTVViewModel: ObservableObject {
    @Published var popularTV = [PopularTV]()
    let manager: PopularTVManagerProtocol

    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
        
    init(manager: PopularTVManagerProtocol = PopularTVManager()) {
        self.manager = manager
        getShows()
    }
    
    func getMoreShows() {
        getShows()
    }

    func getShows() {
        manager.getPopularShows() { [weak self] result in
            switch result {
            case .success(let popularTV):
                for show in popularTV {
                    DispatchQueue.main.async {
                        self?.popularTV.append(show)
                    }
                }
            case .failure(let error):
                switch error {
                case .invalidURL:
                    print("Invalid URL")
                case .invalidData:
                    print("Invalid Data")
                case .unableToComplete:
                    print("Unable to complete")
                case .invalidResponse:
                    print("Invalid response")
                }
            }
        }
    }
}





