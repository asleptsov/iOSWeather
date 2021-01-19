//
//  MockWeatherRepositoryTests.swift
//  WheatherTests
//
//  Created by Anton Sleptsov on 19.01.2021.
//

import XCTest
@testable import Wheather

class MockWeatherRepositoryTests: XCTestCase {

    func testDataIsReceived() {
        let sut: WeatherRepository = MockWeatherRepository()
        
        let lat = 55.9
        let lon = 30.8
        
        let expectation = XCTestExpectation(description: "Weather data not loaded")
        
        sut.fetchWeather(lat: lat,
                         lon: lon,
                         onFinish: { weather in
            XCTAssert(weather != nil, "No weather data provided")
                            
            expectation.fulfill()
        })
     
        wait(for: [expectation], timeout: 1)
    }

}
