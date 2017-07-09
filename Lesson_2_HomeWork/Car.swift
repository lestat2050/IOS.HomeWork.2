//
//  Car.swift
//  Lesson_2_HomeWork
//
//  Created by Yaroslav Surovtsev on 08.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import Foundation

class Car {
    var engineStatus: Bool
    var trunkStatus: Bool
    var contentTrunk = [String: String]()
    
    init(engineStatus: Bool = false, trunkStatus: Bool = false, contentTrunk: [String: String] = [:]) {
        self.engineStatus = engineStatus
        self.trunkStatus = trunkStatus
        self.contentTrunk = contentTrunk
    }
    
    func switchEngineStatus() {
        engineStatus = !engineStatus
    }
    
    func switchTrunkStatus() {
        trunkStatus = !trunkStatus
    }
    
    func beep() {
        print("Beep-Beep!")
    }
    
    func putToTrunk(name: String) {
        if trunkStatus {
            contentTrunk[name] = name
        }
    }
    
    func removeFromTrunk(name: String) {
        if trunkStatus {
            contentTrunk.removeValue(forKey: name)
        }
    }
    
}
