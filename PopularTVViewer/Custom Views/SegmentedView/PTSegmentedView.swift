//
//  PTSegmentedView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import SwiftUI

struct PTSegmentedView: View {
    let tvDetails: PopularTVDetails
    let fontSize: CGFloat = 16
    @State private var selection = 0
    
    var body: some View {
        VStack {
            // Segmented picker with 3 selections
            Picker("", selection: $selection) {
                Text("Networks").tag(0)
                Text("Produced by").tag(1)
                Text("Genres").tag(2)
            }
            .pickerStyle(.segmented)
            .padding([.leading, .trailing], 24)
            
            // Displaying list dependent on $selection.tag()
            if selection == 0 {
                List {
                    ForEach(tvDetails.networks) { network in
                        PTTitleLabel(label: network.name, fontSize: fontSize)
                    }
                }
                .listStyle(.plain)
                .padding([.leading, .trailing], 24)            } else if selection == 1 {
                List {
                    ForEach(tvDetails.productionCompanies) { company in
                        PTTitleLabel(label: company.name, fontSize: fontSize)
                    }
                }
                .listStyle(.plain)
                .padding([.leading, .trailing], 24)
            } else {
                List {
                    ForEach(tvDetails.genres) { genre in
                        PTTitleLabel(label: genre.name, fontSize: fontSize)
                    }
                }
                .listStyle(.plain)
                .padding([.leading, .trailing], 24)
            }
        }
    }
}

struct PTSegmentedView_Previews: PreviewProvider {
    static var previews: some View {
        PTSegmentedView(tvDetails: PopularTVDetails.mockedTVDetails)
    }
}


