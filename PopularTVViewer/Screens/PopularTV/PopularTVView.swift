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
                        NavigationLink(destination: PopularTVDetailsView(showId: show.showId)) {
                            PopularTVCell(popularTV: show)
                                .accessibilityLabel("\(show.name) average rating \(show.voteAverage)")
                        }
                    }
                    EmptyCell()
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
