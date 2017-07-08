//
//  Car.swift
//  Lesson_2_HomeWork
//
//  Created by Yaroslav Surovtsev on 08.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import Foundation

class Car {
    var engine: statusEngine
    var trunk: statusTrunk
    var contentTrunk = [String: String]()
    
    init(engine: statusEngine = .disable, trunk: statusTrunk = .close, contentTrunk: [String: String] = [:]) {
        self.engine = engine
        self.trunk = trunk
        self.contentTrunk = contentTrunk
    }
    
    enum statusEngine {
        case enable
        case disable
    }
    
    enum statusTrunk {
        case open
        case close
    }
    
    func openTrunk() {
        trunk = .open
    }
    
    func closeTrunk() {
        trunk = .close
    }
    
    func enableEngine() {
        engine = .enable
    }
    
    func disableEngine() {
        engine = .disable
    }
    
    func sayBeepBeep() {
        print("Beep-Beep!")
    }
    
    func putToTrunk(name: String) {
        if trunk == .open {
            contentTrunk[name] = name
        }
    }
    
    func removeFromTrunk(name: String) {
        if trunk == .open {
            contentTrunk.removeValue(forKey: name)
        }
    }
    
}
