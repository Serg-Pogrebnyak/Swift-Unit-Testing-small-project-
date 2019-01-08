//
//  UnitTestsTests.swift
//  UnitTestsTests
//
//  Created by Sergey Pogrebnyak on 1/8/19.
//  Copyright © 2019 Sergey Pogrebnyak. All rights reserved.
//

import XCTest
@testable import UnitTests

class UnitTestsTests: XCTestCase {

    func testIgnition() {
        let engine = EngineMocked()
        let car = Car(engine: engine)

        car.ignition()

        XCTAssert((engine.ignitionCount == 1), "ignitionCount is 1")
    }

    func testTurnOn() {
        let engine = EngineMocked()
        let car = Car(engine: engine)

        engine.turnOnValue = true
        let result = car.turnon()
        XCTAssert(result, "good result")
        XCTAssertEqual(engine.turnOnCount, 1, "yes")
    }

    func testRide() {
        let engine = EngineMocked()
        let car = Car(engine: engine)

        car.ride(with: 10)
        XCTAssertEqual(engine.setEngineSpeedCount, 1, "set")
        XCTAssertEqual(engine.setEngineSpeedValue, 5, "yes")
    }

    func testFail() {
        XCTFail()
    }
}
