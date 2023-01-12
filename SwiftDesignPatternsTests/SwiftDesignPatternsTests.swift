//
//  SwiftDesignPatternsTests.swift
//  SwiftDesignPatternsTests
//
//  Created by HAQQQABD on 13/01/2023.
//

import XCTest
@testable import SwiftDesignPatterns

final class SwiftDesignPatternsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testConcurrentUsage() {
        let concurrentQueue = DispatchQueue(label: "concurrentQueue", attributes: .concurrent)
        
        let exp = expectation(description: "Using AppSettings.shared from multiple thread shell succeed")
        
        let callCount = 100
        for callIndex in 1...callCount {
            concurrentQueue.async {
                AppSettings.shared.set(value: callIndex, for: String(callIndex))
            }
        }
        
        while AppSettings.shared.int(for: String(callCount)) != callCount {
            
        }
        exp.fulfill()
        waitForExpectations(timeout: 5) { (error) in
            XCTAssertNil(error, "Test expectation has been failed")
        }
    }

}
