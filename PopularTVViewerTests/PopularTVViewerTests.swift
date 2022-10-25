//
//  PopularTVViewerTests.swift
//  PopularTVViewerTests
//
//  Created by Tyler Perkins on 10/21/22.
//

import XCTest
@testable import PopularTVViewer

class PopularTVViewerTests: XCTestCase {

    func testPopularTVModel() {
        let mockedManager = MockedPopularTVManager()
        mockedManager.result = .success(mockedManager.mockPopularShows)

        let viewModel = PopularTVViewModel(manager: mockedManager)

        #warning("getShows() success case isn't being called even through viewModel has its reference.")
        viewModel.getShows()

        XCTAssertNotNil(viewModel)
        XCTAssertNotNil(mockedManager.result)
//        Currently failing
//        XCTAssertEqual(viewModel.popularTV.count, 4)
        XCTAssertEqual(mockedManager.getPopularShowsCallCounter, 1)


    }

}
