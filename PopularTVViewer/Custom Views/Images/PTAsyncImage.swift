//
//  PTAsyncImage.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/24/22.
//

import SwiftUI

struct PTAsyncImage: View {
    let poster: String
    
    var body: some View {
        AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/w154\(poster)")) { image in
            image
        } placeholder: {
            ProgressView()
                .foregroundColor(Color("USPrimary"))
        }
        .frame(width: 116, height: 200)
        .cornerRadius(8)
    }
}

struct PTAsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        PTAsyncImage(poster: PopularTVDetails.mockedTVDetails.poster)
    }
}
