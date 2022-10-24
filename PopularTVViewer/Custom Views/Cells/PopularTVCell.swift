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
                    .frame(width: 93, height: 138)
                    .cornerRadius(8)
                    .padding([.top], -4)
                
                HStack {
                    HStack(spacing: 0) {
                        Text("\(String(popularTV.voteAverage))")
                            .font(.system(size: 12, weight: .heavy))
                            .minimumScaleFactor(0.6)
                            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 0))
                             
                        Text(" \(Image(systemName: "star.fill"))")
                            .font(.system(size: 8, weight: .heavy))
                        
                    }
                    .frame(width: 44, height: 16, alignment: .leading)
                    .background(Color("USPrimary"))
                    .foregroundColor(Color("USWhite"))
                    .cornerRadius(4)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading], 4)
                
                Text(popularTV.name)
                    .frame(width: 93, alignment: .leading)
                    .lineLimit(1)
                    .font(.system(size: 16))
                    .foregroundColor(Color("USBlack"))
                    .minimumScaleFactor(0.70)
                    .padding([.leading, .trailing, .bottom], 0)
            }
            .frame(width: 101, height: 200)
            .background(Color("USWhite"))
            .cornerRadius(8)
            .shadow(color: Color("USShadow"), radius: 10, x: 5, y: 5)
        }
    }
}

struct PopularShowView_Previews: PreviewProvider {
    static var previews: some View {
        PopularTVCell(popularTV: PopularTV.mockPopularShow)
            .preferredColorScheme(.dark)
    }
}
