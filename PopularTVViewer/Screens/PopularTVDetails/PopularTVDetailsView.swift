//
//  PopularTVDetailsView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct PopularTVDetailsView: View {
    
    let tvDetail: PopularTVDetails
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                VStack(alignment: .leading, spacing: 4) {
            
                    Text(tvDetail.name)
                    if tvDetail.name != tvDetail.originalName {
                        Text(tvDetail.originalName)

                    }
                    Text(tvDetail.tagline)
                    Text(tvDetail.status)
                }
                Spacer()
                
                Image(uiImage: UIImage(named: tvDetail.poster)!)
                Spacer()


            }

            Text(tvDetail.overview)
                .padding()

            PTSegmentedView(tvDetails: tvDetail)
        }
        
    }
}

struct PopularTVDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularTVDetailsView(tvDetail: PopularTVDetails.mockPopularTVDetails)
    }
}
