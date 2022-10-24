//
//  PopularTVDetailsViewModel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import Foundation


final class PopularTVDetailsViewModel: ObservableObject {
    
    #warning("Update for control")
    @Published private(set) var tvDetail = PopularTVDetails()
    
    let managed = PopularTVDetailsManager()
    
    func getDetails(userId: Int) {
        managed.getPopularShows(showId: userId) { [weak self] result in
            DispatchQueue.main.async {
                
                switch result {
                case .success(let details):
                    self?.tvDetail = details
                    print(details)
                    
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



