//
//  PopularTVDetailsViewModel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import Foundation


final class PopularTVDetailsViewModel: ObservableObject {
    @Published private(set) var tvDetail = PopularTVDetails()
    let manager: PopularTVDetailsManagerProtocol
    
    // Injecting for testing.

    init(manager: PopularTVDetailsManagerProtocol = PopularTVDetailsManager(), userID: Int) {
        self.manager = manager
    }
    
    // On appear getting showId information.
    func getDetails(showId: Int) {
        manager.getPopularShowDetails(showId: showId) { [weak self] result in
            DispatchQueue.main.async {
                
                switch result {
                case .success(let details):
                    self?.tvDetail = details
                    
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



