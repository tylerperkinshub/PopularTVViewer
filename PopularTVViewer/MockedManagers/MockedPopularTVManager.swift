//
//  MockedPopularTVManager.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/25/22.
//

import Foundation

// Here to assist with testing and mocking. 
class MockedPopularTVManager: PopularTVManagerProtocol {
    
    var result: Result<[PopularTV], NetworkError>!
    var getPopularShowsCallCounter = 0

    func getPopularShows(completion: @escaping (Result<[PopularTV], NetworkError>) -> Void) {
        completion(result)
       getPopularShowsCallCounter += 1

    }
    
    let mockPopularShow = PopularTV(name: "House of the Dragon", posterPath: "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg", popularity: 4987.163, voteAverage: 7.7, voteCount: 881)
    
     let mockPopularShows = [
    PopularTV(name: "The Lord of the Rings: The Rings of Power", posterPath: "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg", popularity: 4987.163, voteAverage: 7.7, voteCount: 881),
    PopularTV(name: "House of the Dragon", posterPath: "/z2yahl2uefxDCl0nogcRBstwruJ.jpg", popularity: 4979.127, voteAverage: 8.6, voteCount: 1513),
    PopularTV(name: "She-Hulk: Attorney at Law", posterPath: "/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg", popularity: 2823.739, voteAverage: 7.1, voteCount: 846),
    PopularTV(name: "Dahmer – Monster: The Jeffrey Dahmer Story", posterPath: "/f2PVrphK0u81ES256lw3oAZuF3x.jpg", popularity: 1774.56, voteAverage: 8.3, voteCount: 402)
]
    
    
}
