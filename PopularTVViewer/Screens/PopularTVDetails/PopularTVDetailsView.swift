//
//  PopularTVDetailsView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct PopularTVDetailsView: View {
    @StateObject private var viewModel = PopularTVDetailsViewModel(userID: Int())
    let showId: Int
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    PTTitleLabel(label: viewModel.tvDetail.name, fontSize: 18)
                    if viewModel.tvDetail.name != viewModel.tvDetail.originalName {
                        PTSubtitleLabel(label: "aka \(viewModel.tvDetail.originalName)")
                    }
                    PTSubtitleLabel(label: viewModel.tvDetail.tagline)
                    Spacer()
                }
                .frame(width: 175, height: 175)
                Spacer()
                PTAsyncImage(poster: viewModel.tvDetail.poster)
            }
            .frame(height: 225)
            .padding([.leading, .trailing], 24)
            
            PTBodyLabel(label: viewModel.tvDetail.overview)
                .minimumScaleFactor(0.85)
            PTSegmentedView(tvDetails: viewModel.tvDetail)
        }
        .onAppear {
            viewModel.getDetails(userId: showId)
        }
    }
}

struct PopularTVDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PopularTVDetailsView(showId: 0)
        }
    }
}




