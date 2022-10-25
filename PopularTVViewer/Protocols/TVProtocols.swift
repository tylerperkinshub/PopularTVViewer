//
//  PopularTVManagerProtocol.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/24/22.
//

import Foundation

protocol PopularTVManagerProtocol {
    func getPopularShows(completion: @escaping (Result<[PopularTV], NetworkError>) -> Void)
}

protocol PopularTVDetailsManagerProtocol {
    func getPopularShowDetails(showId: Int, completion: @escaping (Result<PopularTVDetails, NetworkError>) -> Void)
}

