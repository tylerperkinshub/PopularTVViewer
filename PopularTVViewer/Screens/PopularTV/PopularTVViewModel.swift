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
    let columns = ColumnLayoutHelper.threeColumnLayout
    
    // Injecting for testing.
    init(manager: PopularTVManagerProtocol = PopularTVManager()) {
        self.manager = manager
    }
    
    // Grabbing next page of results
    func getMoreShows() {
        getShows()
    }
    
    // Initial network call. 
    func getShows() {
        manager.getPopularShows() { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let popularTV):
                    for show in popularTV {
                        self?.popularTV.append(show)
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
}
    
    
    
    
