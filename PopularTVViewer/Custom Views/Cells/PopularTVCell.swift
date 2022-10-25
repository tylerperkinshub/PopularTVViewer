//
//  PopularTVCell.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import SwiftUI

struct PopularTVCell: View {
    let popularTV: PopularTV
    
    var body: some View {
        HStack(spacing: 12) {
            
            VStack {
                PosterRemoteImage(urlString: "https://image.tmdb.org/t/p/w154\(popularTV.posterPath)")
                    .frame(width: 116, height: 175)
                    .cornerRadius(8)
                    .padding([.top], -4)
                
                HStack {
                    HStack(spacing: 0) {
                        PTTitleLabel(label: "\(popularTV.voteAverage)", fontSize: 18)
                            .accessibilityHidden(true)
                            .minimumScaleFactor(0.85)
                            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                             
                        Text(" \(Image(systemName: "star.fill"))")
                            .font(.system(size: 14, weight: .regular))
                            .padding([.bottom], 2)
                            .accessibilityHidden(true)
                        
                    }
                    .frame(width: 60, height: 25)
                    .padding([.trailing], 4)
                    .background(Color("USPrimary"))
                    .foregroundColor(Color("USBlack"))
                    .cornerRadius(4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading], 4)
                
                PTTitleLabel(label: popularTV.name, fontSize: 24)
                    .accessibilityHidden(true)
                    .frame(width: 118, alignment: .leading)
                    .lineLimit(1)
                    .foregroundColor(Color("USBlack"))
                    .minimumScaleFactor(0.75)
                    .padding([.leading, .trailing, .bottom], 0)
            }
            .accessibilityElement(children: .combine)
            .frame(width: 125, height: 260)
            .background(Color("USWhite"))
            .cornerRadius(8)
            .shadow(color: Color("USShadow"), radius: 10, x: 5, y: 5)
        }
        
    }
}

struct PopularShowView_Previews: PreviewProvider {
    static var previews: some View {
        PopularTVCell(popularTV: PopularTV.mockPopularShow)
            
    }
}
