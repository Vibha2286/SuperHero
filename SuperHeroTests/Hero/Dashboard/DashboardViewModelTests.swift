//
//  DashboardViewModelTests.swift
//  SuperHeroTests
//
//  Created by Vibha Mangrulkar on 06/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import XCTest
import Cuckoo

@testable import SuperHero

class DashboardViewModelTests: XCTestCase {
    
    private var systemUnderTest: DashboardViewModel!
    private let mockedView = MockDashboardView()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        systemUnderTest = DashboardViewModel(view: mockedView)
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        systemUnderTest = nil
    }
    
    func testConfigureView() {
        stub(mockedView) {
            when($0.configureTitle(title: "SuperHero")).thenDoNothing()
        }
        systemUnderTest.configureView()
        verify(mockedView).configureTitle(title: "SuperHero")
    }
    
    func testGetAPIData() {
        stub(mockedView) {
            when($0.showLoader()).thenDoNothing()
            when($0.dismissLoader()).thenDoNothing()
        }
        systemUnderTest.getAPIData(searchText: "spider")
        verify(mockedView).showLoader()
    }
}
