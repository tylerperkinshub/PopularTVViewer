//
//  NetworkError.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
