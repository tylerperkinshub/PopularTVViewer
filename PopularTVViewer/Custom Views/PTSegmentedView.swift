//
//  PTSegmentedView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import SwiftUI

struct PTSegmentedView: View {
    
    @State private var favoriteColor = 0
    
    var body: some View {
        VStack {
            Picker("What is your favorite color?", selection: $favoriteColor) {
                Text("Networks").tag(0)
                Text("Produced by").tag(1)
                Text("Genres").tag(2)
            }
            .pickerStyle(.segmented)
            .padding([.leading, .trailing], 24)
        }
    }
}

struct PTSegmentedView_Previews: PreviewProvider {
    static var previews: some View {
        PTSegmentedView()
    }
}
