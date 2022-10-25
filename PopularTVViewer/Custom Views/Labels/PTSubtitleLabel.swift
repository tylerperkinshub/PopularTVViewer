//
//  PTSubtitleLabel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct PTSubtitleLabel: View {
        let label: String
        
        var body: some View {
            Text(label)
                .font(.system(size: 14, weight: .light, design: .default))
                .italic()
        }
}

struct PTSubtitleLabel_Previews: PreviewProvider {
    static var previews: some View {
        PTSubtitleLabel(label: "Fire and blood.")
    }
}
