//
//  PopularTV.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import Foundation

// Model object for all PopularTV.
struct ResultsRoot: Codable {
    var results: [PopularTV] = []
    enum RootKeys: String, CodingKey {
        case results
    }
}

struct PopularTV: Codable, Identifiable {
    let id = UUID()
    var showId: Int = 0
    var name: String = ""
    var posterPath: String = ""
    var popularity: Double = 0
    var voteAverage: Double = 0
    var voteCount: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case showId = "id"
        case name
        case popularity
        case posterPath = "poster_path"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
    
    static let mockPopularShow = PopularTV(name: "House of the Dragon", posterPath: "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg", popularity: 4987.163, voteAverage: 7.7, voteCount: 881)
    
    static let mockPopularShows = [
        PopularTV(name: "The Lord of the Rings: The Rings of Power", posterPath: "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg", popularity: 4987.163, voteAverage: 7.7, voteCount: 881),
        PopularTV(name: "House of the Dragon", posterPath: "/z2yahl2uefxDCl0nogcRBstwruJ.jpg", popularity: 4979.127, voteAverage: 8.6, voteCount: 1513),
        PopularTV(name: "She-Hulk: Attorney at Law", posterPath: "/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg", popularity: 2823.739, voteAverage: 7.1, voteCount: 846),
        PopularTV(name: "Dahmer – Monster: The Jeffrey Dahmer Story", posterPath: "/f2PVrphK0u81ES256lw3oAZuF3x.jpg", popularity: 1774.56, voteAverage: 8.3, voteCount: 402),
        PopularTV(name: "The Lord of the Rings: The Rings of Power", posterPath: "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg", popularity: 4987.163, voteAverage: 7.7, voteCount: 881),
        PopularTV(name: "House of the Dragon", posterPath: "/z2yahl2uefxDCl0nogcRBstwruJ.jpg", popularity: 4979.127, voteAverage: 8.6, voteCount: 1513),
        PopularTV(name: "She-Hulk: Attorney at Law", posterPath: "/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg", popularity: 2823.739, voteAverage: 7.1, voteCount: 846),
        PopularTV(name: "Dahmer – Monster: The Jeffrey Dahmer Story", posterPath: "/f2PVrphK0u81ES256lw3oAZuF3x.jpg", popularity: 1774.56, voteAverage: 8.3, voteCount: 402),
        PopularTV(name: "The Lord of the Rings: The Rings of Power", posterPath: "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg", popularity: 4987.163, voteAverage: 7.7, voteCount: 881),
        PopularTV(name: "House of the Dragon", posterPath: "/z2yahl2uefxDCl0nogcRBstwruJ.jpg", popularity: 4979.127, voteAverage: 8.6, voteCount: 1513),
        PopularTV(name: "She-Hulk: Attorney at Law", posterPath: "/hJfI6AGrmr4uSHRccfJuSsapvOb.jpg", popularity: 2823.739, voteAverage: 7.1, voteCount: 846),
        PopularTV(name: "Dahmer – Monster: The Jeffrey Dahmer Story", posterPath: "/f2PVrphK0u81ES256lw3oAZuF3x.jpg", popularity: 1774.56, voteAverage: 8.3, voteCount: 402)
    ]
}
