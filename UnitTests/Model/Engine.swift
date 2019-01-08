//
//  Engine.swift
//  UnitTests
//
//  Created by Sergey Pogrebnyak on 1/8/19.
//  Copyright © 2019 Sergey Pogrebnyak. All rights reserved.
//

enum EngineState {
    case off
    case ignitionOn
    case idle
    case ride
}

class Engine {
    private(set) var engineSpeed: Int = 0
    private(set) var state: EngineState = .off

    func ignition() {
        state = .ignitionOn
    }

    func turnOn() -> Bool {
        if state == .ignitionOn {
            state = .idle
            return true
        } else {
            return false
        }
    }

    func setEngineSpeed(_ speed: Int) {
        engineSpeed = speed
    }
}
