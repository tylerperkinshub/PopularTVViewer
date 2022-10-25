//
//  MainCoordinator.swift
//  PopularTVViewer
//
//  Created by Tyler Perkins on 10/22/22.
//

import UIKit
import SwiftUI

final class MainCoordinator: Coordinator {
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = UIHostingController(rootView: PopularTVView(popularShow: PopularTV()))
    }
}
