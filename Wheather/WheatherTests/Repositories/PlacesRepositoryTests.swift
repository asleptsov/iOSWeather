//
//  PlacesRepositoryTests.swift
//  WheatherTests
//
//  Created by Anton Sleptsov on 19.01.2021.
//

import XCTest
@testable import Wheather

class PlacesRepositoryTests: XCTestCase {

    func testMockAmount() {
        let placesCountExpected = 3
        let sut: PlacesRepository = MockPlacesRepository()
        
        let expectation = XCTestExpectation(description: "Places are not loaded")
        
        sut.loadPlaces(onFinish: { places in
            if places.count == placesCountExpected {
                expectation.fulfill()
                return
            }
            XCTAssert(places.count == placesCountExpected,
                      "Should be \(placesCountExpected) test places")
        })
        
        wait(for: [expectation], timeout: 1)
    }
    
    func testMockUniquePlaces() {
        let sut: PlacesRepository = MockPlacesRepository()
        
        let expectation = XCTestExpectation(description: "Places are not loaded")
        
        sut.loadPlaces(onFinish: { places in
            XCTAssert(!places.isEmpty,
                      "No places provided")
            
            for place in places {
                var occuranceCount = 0
                for checkPlace in places {
                    if checkPlace.lat == place.lat &&
                        checkPlace.lon == place.lon {
                        occuranceCount += 1
                    }
                }
                
                XCTAssert(occuranceCount == 1,
                          "There are places with same coordinates")
            }
            
            expectation.fulfill()
        })
        
        wait(for: [expectation], timeout: 1)
    }

}
