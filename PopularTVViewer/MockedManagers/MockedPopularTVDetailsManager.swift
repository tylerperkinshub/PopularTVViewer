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
    var getPopularTVDetailsCallCounter = 0
    
    func getPopularShowDetails(showId: Int, completion: @escaping (Result<PopularTVDetails, NetworkError>) -> Void) {
        completion(.success(mockedTVDetails))
        getPopularTVDetailsCallCounter += 1
    }
    
    let mockedTVDetails = PopularTVDetails(name: "House of the Dragon",
                                            originalName: "Game of Thrones",
                                            overview: "The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.",
                                            poster: "rop.jpg",
                                            backdrop: "/Aa9TLpNpBMyRkD8sPJ7ACKLjt0l.jpg",
                                            status: "Returning Series",
                                            tagline: "Fire and blood.",
                                            type: "Scripted",
                                            genres: [
                                                PopularTVDetails.Genre(name: "Sci-Fi & Fantasy"),
                                                PopularTVDetails.Genre(name: "Drama"),
                                                PopularTVDetails.Genre(name: "Action & Adventure")
                                            ],
                                            networks: [
                                                PopularTVDetails.Networks(name: "HBO")
                                            ],
                                            productionCompanies: [
                                                PopularTVDetails.ProductionCompany(name: "HBO"),
                                                PopularTVDetails.ProductionCompany(name: "Bastard Sword"),
                                                PopularTVDetails.ProductionCompany(name: "1:26 Pictures"),
                                                PopularTVDetails.ProductionCompany(name: "GRRM")
                                            ])
}
