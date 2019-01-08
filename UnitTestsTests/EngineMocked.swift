//
//  EngineMocked.swift
//  UnitTestsTests
//
//  Created by Sergey Pogrebnyak on 1/8/19.
//  Copyright © 2019 Sergey Pogrebnyak. All rights reserved.
//

import Foundation

class EngineMocked: Engine {
    var ignitionCount: Int = 0
    var turnOnCount: Int = 0
    var turnOnValue: Bool = true
    var setEngineSpeedCount: Int = 0
    var setEngineSpeedValue: Int?

    override func ignition() {
        ignitionCount += 1
    }

    override func turnOn() -> Bool {
        turnOnCount += 1
        return turnOnValue
    }

    override func setEngineSpeed(_ speed: Int) {
        setEngineSpeedCount += 1
        setEngineSpeedValue = speed
    }
}
