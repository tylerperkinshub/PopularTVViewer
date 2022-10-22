//
//  PTNameCell.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import SwiftUI

struct PTNameCell: View {
    
    let name: String
    
    var body: some View {
        VStack(){
            Text(name)
                .frame(width: 150, height: 16, alignment: .leading)
        }
            
    }
}

struct PTNameCell_Previews: PreviewProvider {
    static var previews: some View {
        PTNameCell(name: "HBO")
    }
}
