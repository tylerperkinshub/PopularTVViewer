//
//  PopularTVView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct PopularTVView: View {
    let manager = PopularTVManager()
    let popularShow: PopularTV
    @StateObject var viewModel = PopularTVViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(viewModel.popularTV) { show in
                        // On selection get TVDetails for the showId.
                        NavigationLink(destination: PopularTVDetailsView(showId: show.showId)) {
                            PTPopularTVCell(popularTV: show)
                                .accessibilityLabel("\(show.name) average rating \(show.voteAverage)")
                        }
                    }
                    // Spying for next network call.
                    PTEmptyCell()
                        .onAppear {
                            viewModel.getMoreShows()
                        }
                }
            }
            .navigationTitle("Popular Shows")
        }
        .onAppear {
            viewModel.getShows()
        }
    }
}

struct PopularTVView_Previews: PreviewProvider {
    static var previews: some View {
        PopularTVView(popularShow: PopularTV.mockPopularShow)
    }
}
