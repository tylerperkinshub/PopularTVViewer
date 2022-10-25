//
//  PTAverageRatingView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/25/22.
//

import SwiftUI

struct PTAverageRatingView: View {
    let popularTV: PopularTV
    
    var body: some View {
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
        .shadow(color: Color("USShadow"), radius: 5, x:1, y: 1)    }
}

struct PTAverageRatingView_Previews: PreviewProvider {
    static var previews: some View {
        PTAverageRatingView(popularTV: PopularTV.mockPopularShow)
    }
}
