//
//  PTSubtitleLabel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct PTSubtitleLabel: View {
        @State var subtitleLabel: String = ""
        
        var body: some View {
            Text(subtitleLabel)
                .font(.system(size: 14, weight: .light, design: .default))
                .italic()
        }
}

struct PTSubtitleLabel_Previews: PreviewProvider {
    static var previews: some View {
        PTSubtitleLabel(subtitleLabel: "Fire and blood.")
    }
}
