//
//  PTTitleLabel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct PTTitleLabel: View {
    
    let titleLabel: String
    
    var body: some View {
        Text(titleLabel)
            .font(.system(size: 16, weight: .medium, design: .default))
            
    }
}

struct PTTitleLabel_Previews: PreviewProvider {
    static var previews: some View {
        PTTitleLabel(titleLabel: "House of the Dragon")
    }
}
