//
//  WheatherTests.swift
//  WheatherTests
//
//  Created by Anton Sleptsov on 13.01.2021.
//

import UIKit

import XCTest
@testable import Wheather

class WheatherTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
//        testAppAssembler()
        
        // App assembler
        let assembler = AppAssembler()
        assembler.assemble(with: .normal)
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }


}
