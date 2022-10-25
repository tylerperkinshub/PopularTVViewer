//
//  PosterImageManager.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import Foundation
import UIKit

// Downloading images and storing it in a cache. 
final class PosterImageManager {
    static var shared = PosterImageManager()
    private let cache = NSCache<NSString, UIImage>()

    func downloadImage(fromURLString urlString: String, complete: @escaping (UIImage?) -> Void) {
        let cacheKey = NSString(string: urlString)
        if let image = cache.object(forKey: cacheKey) {
            complete(image)
            return
        }
        guard let url = URL(string: urlString) else {
            complete(nil)
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            guard let data = data, let image = UIImage(data: data) else {
                complete(nil)
                return
            }
            
            self.cache.setObject(image, forKey: cacheKey)
            complete(image)
        }
        
        task.resume()
    }
}
