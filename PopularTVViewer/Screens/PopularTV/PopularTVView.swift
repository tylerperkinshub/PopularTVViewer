//
//  PopularTVView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct PopularTVView: View {
    @StateObject var viewModel = PopularTVViewModel()
    
    let popularShow: PopularTV
    
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
#warning("This feels buggy as hell.")
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
