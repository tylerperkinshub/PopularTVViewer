//
//  PTBodyLabel.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

// Reusable Body label 
struct PTBodyLabel: View {
    let label: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.system(size: 16, weight: .regular, design: .default))
                .padding([.leading, .trailing], 24)
        }
    }
}

struct PTBodyLabel_Previews: PreviewProvider {
    static var previews: some View {
        PTBodyLabel(label: "The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.")
    }
}
