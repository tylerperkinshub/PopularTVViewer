//
//  MockedPopularTVManager.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/25/22.
//

import Foundation

final class MockedPopularTVManager: PopularTVManagerProtocol {
    
    var result: Result<[PopularTV], NetworkError>!
    
    func getPopularShows(completion: @escaping (Result<[PopularTV], NetworkError>) -> Void) {
        completion(result)
    }
    
    
}
