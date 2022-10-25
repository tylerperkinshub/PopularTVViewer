//
//  CustomViewsTest.swift
//  PopularTVViewerTests
//
//  Created by Tyler Perkins on 10/25/22.
//

import XCTest
@testable import PopularTVViewer

class CustomViewsTests: XCTestCase {
    
    private var popularTV: MockedPopularTVManager!
    private var tvDetail: MockedPopularTVDetailsManager!
    
    override func setUp() {
        super.setUp()
        
        popularTV = MockedPopularTVManager()
        tvDetail = MockedPopularTVDetailsManager()
    }
    

    

    func testPTTitleLabel() {
        let titleLabel = PTTitleLabel(label: tvDetail.mockedTVDetails.name, fontSize: 16)
        
        XCTAssertNotNil(tvDetail)
        XCTAssertNotNil(titleLabel)
        XCTAssertEqual(titleLabel.label, "House of the Dragon")
    }
    
    func testPTSubtitleLabel() {
        let subtitleLabel = PTSubtitleLabel(label: tvDetail.mockedTVDetails.tagline)
        
        XCTAssertNotNil(tvDetail)
        XCTAssertNotNil(subtitleLabel)
        XCTAssertEqual(subtitleLabel.label, "Fire and blood.")
        
    }
    
    func testPTBodyLabel() {
        let bodyLabel = PTBodyLabel(label: tvDetail.mockedTVDetails.overview)
        
        XCTAssertNotNil(tvDetail)
        XCTAssertNotNil(bodyLabel)
        XCTAssertEqual(bodyLabel.label, "The Targaryen dynasty is at the absolute apex of its power, with more than 15 dragons under their yoke. Most empires crumble from such heights. In the case of the Targaryens, their slow fall begins when King Viserys breaks with a century of tradition by naming his daughter Rhaenyra heir to the Iron Throne. But when Viserys later fathers a son, the court is shocked when Rhaenyra retains her status as his heir, and seeds of division sow friction across the realm.")
    }
    
    func testPTAverageRatingView() {
        let averageRatingView = PTAverageRatingView(popularTV: popularTV.mockPopularShow)
        
        XCTAssertNotNil(popularTV)
        XCTAssertNotNil(averageRatingView)
    }
    
    func testPTEmptyCell() {
        let emptyCell = PTEmptyCell()
        
        XCTAssertNotNil(emptyCell)
    }

}
