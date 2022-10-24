//
//  PTActivityIndicator.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/23/22.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activiyIndicatorView = UIActivityIndicatorView(style: .large)
        activiyIndicatorView.color = UIColor(Color("USPrimary"))
        activiyIndicatorView.startAnimating()
        return activiyIndicatorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
}


struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
