//
//  Car.swift
//  UnitTests
//
//  Created by Sergey Pogrebnyak on 1/8/19.
//  Copyright © 2019 Sergey Pogrebnyak. All rights reserved.
//

class Car {
    private let engine: Engine

    init(engine: Engine) {
        self.engine = engine
    }

    func ignition() {
        engine.ignition()
    }

    func turnon() -> Bool {
        return engine.turnOn()
    }

    func ride(with speed: Int) {
        let engineSpeed = Int(speed / 2)
        engine.setEngineSpeed(engineSpeed)
    }
}
