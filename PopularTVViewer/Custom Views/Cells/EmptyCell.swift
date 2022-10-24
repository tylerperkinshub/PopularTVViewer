//
//  EmptyCell.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import SwiftUI

struct EmptyCell: View {
    var body: some View {
        VStack {
            EmptyView()
        }
        .frame(width: 101, height: 200)

    }
}

struct EmptyCell_Previews: PreviewProvider {
    static var previews: some View {
        EmptyCell()
    }
}
