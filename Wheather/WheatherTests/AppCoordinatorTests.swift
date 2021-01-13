//
//  AppCoordinatorTests.swift
//  WheatherTests
//
//  Created by Anton Sleptsov on 13.01.2021.
//

import UIKit

import XCTest
@testable import Wheather

class AppCoordinatorTests: XCTestCase {
            
    func testOnboarding() throws {
        let rootViewController = UIViewController()
        let sut = AppCoordinator(with: rootViewController)
        XCTAssert(sut.rootViewController == rootViewController, "Root view controller is incorrect")
        
        sut.showOnboarding()
        XCTAssert(sut.topViewController is OnboardingViewController, "Top view controller should be OnboardingViewController")
    }
    
    func testPlaces() throws {
        let rootViewController = UIViewController()
        let sut = AppCoordinator(with: rootViewController)
        XCTAssert(sut.rootViewController == rootViewController, "Root view controller is incorrect")
        
        sut.showPlacesList()
        XCTAssert(sut.topViewController is PlacesListViewController, "Top view controller should be PlacesListViewController")
    }
    
    func testPlaceDetails() throws {
        let rootViewController = UIViewController()
        let sut = AppCoordinator(with: rootViewController)
        XCTAssert(sut.rootViewController == rootViewController, "Root view controller is incorrect")
        
        sut.showPlaceDetails()
        XCTAssert(sut.topViewController is PlaceDetailsViewController, "Top view controller should be PlaceDetailsViewController")
    }
}

