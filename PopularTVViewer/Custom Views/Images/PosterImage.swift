//
//  PosterImage.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import SwiftUI

final class PosterImage: ObservableObject {
    
    @Published var posterImage: Image? = nil
    
    func load(fromURLString urlString: String) {
        #warning("Need to call network here")
    }
    
}

struct RemoteImage: View {
    var posterImage: Image?
    
    var body: some View {
        posterImage?.resizable() ?? Image("poster-placeholder").resizable()
    }
}


struct PosterRemoteImage: View {
    
    @StateObject var posterImageLoader = PosterImage()
    let urlString: String
    
    var body: some View {
        RemoteImage(posterImage: posterImageLoader.posterImage)
            .onAppear { posterImageLoader.load(fromURLString: urlString)}
    }
}

