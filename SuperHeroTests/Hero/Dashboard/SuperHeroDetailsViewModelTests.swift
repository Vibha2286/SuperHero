//
//  SuperHeroDetailsViewModelTests.swift
//  SuperHeroTests
//
//  Created by Vibha Mangrulkar on 07/10/20.
//  Copyright © 2020 Vibha Mangrulkar. All rights reserved.
//

import XCTest
import Cuckoo

@testable import SuperHero

class SuperHeroDetailsViewModelTests: XCTestCase {
    
    private var systemUnderTest: SuperHeroDetailsViewModel!
    private let mockedView = MockSuperHeroDetailsView()
    private var result: Result?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        if let resultData = self.loadJsonForResult(filename: "Result") {
            result = resultData
            
        }
        systemUnderTest = SuperHeroDetailsViewModel(view: mockedView, result: result)
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        systemUnderTest = nil
    }
    
    func loadJsonForResult(filename fileName: String) -> Result? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Result.self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func testConfigureView() {
        stub(mockedView) {
            when($0.configureTitle(title: "Batman")).thenDoNothing()
            when($0.configureHeroImage(image: any())).thenDoNothing()
            when($0.configureBiography(bio: any())).thenDoNothing()
            when($0.configureAppearance(appearance: any())).thenDoNothing()
            when($0.configureConnections(connections: any())).thenDoNothing()
            when($0.configureWork(work: any())).thenDoNothing()
        }
        systemUnderTest.configureView()
        verify(mockedView).configureTitle(title: "Batman")
        verify(mockedView).configureHeroImage(image: any())
        verify(mockedView).configureBiography(bio: any())
        verify(mockedView).configureAppearance(appearance: any())
        verify(mockedView).configureConnections(connections: any())
        verify(mockedView).configureWork(work: any())
    }
}

