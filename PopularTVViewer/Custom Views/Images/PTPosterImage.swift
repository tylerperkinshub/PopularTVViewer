//
//  PosterImage.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import SwiftUI

final class PTPosterImage: ObservableObject {
    @Published var posterImage: Image? = nil
    
    func load(fromURLString urlString: String) {
        PosterImageManager.shared.downloadImage(fromURLString: urlString) { poster in
            guard let poster = poster else { return }
            
            DispatchQueue.main.async {
                self.posterImage = Image(uiImage: poster)
            }
        }
    }
}


struct RemoteImage: View {
    var posterImage: Image?
    
    var body: some View {
        posterImage?.resizable() ?? Image("poster-placeholder").resizable()
    }
}


struct PTPosterRemoteImage: View {
    @StateObject var posterImageLoader = PTPosterImage()
    let urlString: String
    
    var body: some View {
        RemoteImage(posterImage: posterImageLoader.posterImage)
            .onAppear { posterImageLoader.load(fromURLString: urlString)}
    }
}

