//
//  PTSegmentedView.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/21/22.
//

import SwiftUI

struct PTSegmentedView: View {
    let tvDetails: PopularTVDetails
    @State private var selection = 0
    
    var body: some View {

        VStack {
            Picker("What is your favorite color?", selection: $selection) {
                Text("Networks").tag(0)
                Text("Produced by").tag(1)
                Text("Genres").tag(2)
            }
            .pickerStyle(.segmented)
            .padding([.leading, .trailing], 24)
            
            #warning("the lists need to extracted out")
            if selection == 0 {
                List {
                    ForEach(tvDetails.networks) { network in
                        Text(network.name)
                    }
                }
                .listStyle(.plain)
                .padding([.leading, .trailing], 24)
            } else if selection == 1 {
                List {
                    ForEach(tvDetails.productionCompanies) { company in
                        Text(company.name)
                    }
                }
                .listStyle(.plain)
                .padding([.leading, .trailing], 24)
            } else {
                List {
                    ForEach(tvDetails.genres) { genre in
                        Text(genre.name)
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
        PTSegmentedView(tvDetails: PopularTVDetails.mockPopularTVDetails)
    }
}


