//
//  Car.swift
//  Lesson_2_HomeWork
//
//  Created by Yaroslav Surovtsev on 08.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import Foundation

class Car {
    var engineIsEnable: Bool
    var trunkIsOpen: Bool
    var contentTrunk = [String: String]()
    
    init(engineIsEnable: Bool = false, trunkIsOpen: Bool = false, contentTrunk: [String: String] = [:]) {
        self.engineIsEnable = engineIsEnable
        self.trunkIsOpen = trunkIsOpen
        self.contentTrunk = contentTrunk
    }
    
    func enableEngine() {
        engineIsEnable = true
    }
    
    func disableEngine() {
        engineIsEnable = false
    }
    
    func openTrunk() {
        trunkIsOpen = true
    }
    
    func closeTrunk() {
        trunkIsOpen = false
    }
    
    func makeSignal() {
        print("Beep-Beep!")
    }
    
    func putToTrunk(key: String, name: String) {
        if trunkIsOpen {
            contentTrunk[key] = name
        }
    }
    
    func removeFromTrunk(key: String) {
        if trunkIsOpen {
            contentTrunk.removeValue(forKey: key)
        }
    }
    
}
