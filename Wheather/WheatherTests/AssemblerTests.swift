//
//  AssemblerTests.swift
//  WheatherTests
//
//  Created by Anton Sleptsov on 19.01.2021.
//

import XCTest
@testable import Wheather

class AssemblerTests: XCTestCase {

    func testAssemblyForOnline() {
        let sut = AppAssembler(onlinePlacesRepository: OnlinePlacesRepository(),
                               mockPlacesRepository: MockPlacesRepository(),
                               onlineWeatherRepository: OnlineWeatherRepository(),
                               mockWeatherRepository: MockWeatherRepository())
        
        sut.assemble(with: .online)
        
        XCTAssert(sut.placesRepository is OnlinePlacesRepository,
                  "Places repository should be OnlinePlacesRepository")
        XCTAssert(sut.weatherRepository is OnlineWeatherRepository,
                  "Weather repository should be OnlineWeatherRepository")
    }
    
    func testAssemblyForMockAll() {
        let sut = AppAssembler(onlinePlacesRepository: OnlinePlacesRepository(),
                               mockPlacesRepository: MockPlacesRepository(),
                               onlineWeatherRepository: OnlineWeatherRepository(),
                               mockWeatherRepository: MockWeatherRepository())
        
        sut.assemble(with: .mockAll)
        
        XCTAssert(sut.placesRepository is MockPlacesRepository,
                  "Places repository should be MockPlacesRepository")
        XCTAssert(sut.weatherRepository is MockWeatherRepository,
                  "Weather repository should be MockWeatherRepository")
    }
    
    func testAssemblyForMockPlaces() {
        let sut = AppAssembler(onlinePlacesRepository: OnlinePlacesRepository(),
                               mockPlacesRepository: MockPlacesRepository(),
                               onlineWeatherRepository: OnlineWeatherRepository(),
                               mockWeatherRepository: MockWeatherRepository())
        
        sut.assemble(with: .mockPlaces)
        
        XCTAssert(sut.placesRepository is MockPlacesRepository,
                  "Places repository should be MockPlacesRepository")
        XCTAssert(sut.weatherRepository is OnlineWeatherRepository,
                  "Weather repository should be OnlineWeatherRepository")
    }
}
