//
//  PopularTVDetailsManager.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import Foundation

class PopularTVDetailsManager: PopularTVDetailsManagerProtocol {
    
    func getPopularShowDetails(showId: Int, completion: @escaping (Result<PopularTVDetails, NetworkError>) -> Void) {
        let popularShowsURL = "https://api.themoviedb.org/3/tv/\(showId)?api_key=f691c008b316b96c5f83eae55b299bcb&language=en-US"
        guard let url = URL(string: popularShowsURL) else {
            completion(.failure(.invalidURL))
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _  = error {
                completion(.failure(.unableToComplete))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(PopularTVDetails.self, from: data)
                completion(.success(decodedResponse))
                return
            } catch {
                completion(.failure(.invalidData))
            }
        }

        task.resume()
    }
}
