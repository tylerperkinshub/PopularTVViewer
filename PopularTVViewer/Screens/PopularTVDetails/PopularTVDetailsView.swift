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


                    PTTitleLabel(titleLabel: viewModel.tvDetail.name)
                    
                    if viewModel.tvDetail.name != viewModel.tvDetail.originalName {

                         PTSubtitleLabel(subtitleLabel: "aka \(viewModel.tvDetail.originalName)")
                    }
                    

                    PTSubtitleLabel(subtitleLabel: viewModel.tvDetail.tagline)
                    
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
            

           PTBodyLabel(bodyLabel: viewModel.tvDetail.overview)
            
            
            
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




