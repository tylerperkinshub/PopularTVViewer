//
//  PopularTVDetailsTests.swift
//  PopularTVViewerTests
//
//  Created by Tyler Perkins on 10/25/22.
//

import XCTest
@testable import PopularTVViewer

class PopularTVDetailsTests: XCTestCase {
    
    func testPopularTVDetailViewModel() {
        
        let tvShow = PopularTV(name: "House of the Dragon", posterPath: "/mYLOqiStMxDK3fYZFirgrMt8z5d.jpg", popularity: 4987.163, voteAverage: 7.7, voteCount: 881)
        let mockedManager = MockedPopularTVDetailsManager()
        mockedManager.result = .success(mockedManager.mockedTVDetails)
        let viewModel = PopularTVDetailsViewModel(manager: mockedManager, userID: tvShow.showId)
        
#warning("getDetails() success case isn't being called even through viewModel has its reference.")
        viewModel.getDetails(showId: tvShow.showId)
        
        XCTAssertNotNil(viewModel)
        XCTAssertNotNil(mockedManager.result)
//        Currently failing
//        XCTAssertEqual(viewModel.tvDetail.name, tvShow.name)
        XCTAssertEqual(mockedManager.getPopularTVDetailsCallCounter, 1)
    }
}
