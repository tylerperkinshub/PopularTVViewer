//
//  PopularTVViewModel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

final class PopularTVViewModel: ObservableObject {
    
    @Published var popularTV = [PopularTV]()
    
    @Published var isLoading = false
    
    
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    let manager = PopularTVManager()
    var page: Int = 1
    
    
    func getMoreShows() {
        getShows()
    }
    
    
    
    func getShows() {
        
        isLoading = true
        manager.getPopularShows(page: page) { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
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
        page += 1
    }
}




