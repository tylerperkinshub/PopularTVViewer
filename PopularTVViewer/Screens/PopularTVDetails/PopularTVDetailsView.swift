//
//  PopularTVDetailsView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct PopularTVDetailsView: View {
    
    @StateObject private var viewModel = PopularTVDetailsViewModel()

    let showId: Int
    
    var body: some View {
        
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(viewModel.tvDetail.name)
                        .font(.system(size: 16, weight: .medium, design: .default))

                    // PTTitleLabel(titleLabel: viewModel.tvDetail.name)
                    
                    if viewModel.tvDetail.name != viewModel.tvDetail.originalName {
                        Text("aka \(viewModel.tvDetail.originalName)")
                            .font(.system(size: 14, weight: .light, design: .default))
                            .italic()
                        // PTSubtitleLabel(subtitleLabel: "aka \(viewModel.tvDetail.originalName)")
                    }
                    
                    Text(viewModel.tvDetail.tagline)
                        .font(.system(size: 14, weight: .light, design: .default))
                        .italic()
                    // PTSubtitleLabel(subtitleLabel: viewModel.tvDetail.tagline)
                    
                    Spacer()
                }
                .frame(height: 138)
                
                Spacer()
                
#warning("This should be its own custom view")
                PosterRemoteImage(urlString: "https://image.tmdb.org/t/p/w154\(viewModel.tvDetail.poster)")
                    .frame(width: 93, height: 138)
                    .cornerRadius(8)
                    .padding([.top], -4)
            }
            .padding([.top], 24)
            .padding([.leading, .trailing], 24)
            
            Text(viewModel.tvDetail.overview)
                .font(.system(size: 16, weight: .regular, design: .default))
                .padding([.leading, .trailing], 24)
            
           // PTBodyLabel(bodyLabel: viewModel.tvDetail.overview)
            
            
            
            PTSegmentedView(tvDetails: viewModel.tvDetail)
        }
        .onAppear {
            viewModel.getDetails(userId: showId)
        }
    }
    
}

//struct PopularTVDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            PopularTVDetailsView(tvDetail: PopularTVDetails, showId: 0)
//        }
//    }
//}




