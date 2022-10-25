//
//  MockedPopularTVDetailsManager.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/25/22.
//

import Foundation

// Here to assist with testing and mocking. 
final class MockedPopularTVDetailsManager: PopularTVDetailsManagerProtocol {
    
    var result: Result<PopularTVDetails, NetworkError>!
    
    func getPopularShowDetails(showId: Int, completion: @escaping (Result<PopularTVDetails, NetworkError>) -> Void) {
        completion(result)
    }
    
    
}
