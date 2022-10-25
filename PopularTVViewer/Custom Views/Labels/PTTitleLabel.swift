//
//  PTTitleLabel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

// Reusable title label
struct PTTitleLabel: View {
    let label: String
    let fontSize: CGFloat
    
    var body: some View {
        Text(label)
            .font(.system(size: fontSize, weight: .medium, design: .default))
            .frame(alignment: .leading)
            
    }
}

struct PTTitleLabel_Previews: PreviewProvider {
    static var previews: some View {
        PTTitleLabel(label: "House of the Dragon", fontSize: 24)
    }
}
