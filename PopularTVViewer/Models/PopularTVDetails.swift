//
//  PopularTVDetails.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import Foundation

struct PopularTVDetails: Codable, Identifiable {
    let id = UUID()
    var name: String = ""
    var originalName: String = ""
    var overview: String = ""
    var poster: String = ""
    var backdrop: String = ""
    var status: String = ""
    var tagline: String = ""
    var type: String = ""
    var genres: [Genre] = []
    var networks: [Networks] = []
    var productionCompanies: [ProductionCompany] = []

    struct Genre: Codable {
        var name: String = ""
    }
    
    struct Networks: Codable {
        var name: String = ""
    }
    
    struct ProductionCompany: Codable {
        var name: String = ""
    }
    
    enum CodingKeys: String, CodingKey {
        case name, overview, status, tagline, type, genres, networks, productionCompanies
        case originalName = "original_name"
        case poster = "poster_path"
        case backdrop = "backdrop_path"
        
    }
    
    static let mockPopularTVDetails = PopularTVDetails(name: "House of the Dragon",
                                                       originalName: "House of the Dragon",
                                                       overview: "The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.",
                                                       poster: "/z2yahl2uefxDCl0nogcRBstwruJ.jpg",
                                                       backdrop: "/Aa9TLpNpBMyRkD8sPJ7ACKLjt0l.jpg",
                                                       status: "Returning Series",
                                                       tagline: "Fire and blood.",
                                                       type: "Scripted",
                                                       genres: [
                                                        Genre(name: "Sci-Fi & Fantasy"),
                                                        Genre(name: "Drama"),
                                                        Genre(name: "Action & Adventure")
                                                       ],
                                                       networks: [
                                                        Networks(name: "HBO")
                                                       ],
                                                       productionCompanies: [
                                                        ProductionCompany(name: "HBO"),
                                                        ProductionCompany(name: "Bastard Sword"),
                                                        ProductionCompany(name: "1:26 Pictures"),
                                                        ProductionCompany(name: "GRRM")
                                                       ])
}
