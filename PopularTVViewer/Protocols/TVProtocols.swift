//
//  PopularTVManagerProtocol.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/24/22.
//

import Foundation

protocol PopularTVManagerProtocol {
    func getPopularShows(page: Int, completion: @escaping (Result<[PopularTV], NetworkError>) -> Void)
}

protocol PopularTVDetailsManagerProtocol {
    func getPopularShows(showId: Int, completion: @escaping (Result<PopularTVDetails, NetworkError>) -> Void)
}

