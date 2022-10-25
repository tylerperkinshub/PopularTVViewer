//
//  PopularTVCell.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import SwiftUI

struct PTPopularTVCell: View {
    let popularTV: PopularTV
    let cornerRadius: CGFloat = 8
    
    var body: some View {
        HStack(spacing: 12) {
            VStack {
                PTPosterRemoteImage(urlString: "https://image.tmdb.org/t/p/w154\(popularTV.posterPath)")
                    .frame(width: 116, height: 175)
                    .cornerRadius(cornerRadius)
                    .padding([.top], -4)
                HStack {
                    PTAverageRatingView(popularTV: popularTV)
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
            .cornerRadius(cornerRadius)
            .shadow(color: Color("USShadow"), radius: 10, x: 5, y: 5)
        }
    }
}

struct PopularShowView_Previews: PreviewProvider {
    static var previews: some View {
        PTPopularTVCell(popularTV: PopularTV.mockPopularShow)
    }
}
