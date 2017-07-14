//
//  Car.swift
//  Lesson_2_HomeWork
//
//  Created by Yaroslav Surovtsev on 08.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import Foundation

class Car {
    
    private var isEngineEnable: Bool
    private var isTrunkOpen: Bool
    private var trunk: [String: String]
    
    init(isEngineEnable: Bool = false,
         isTrunkOpen: Bool = false,
         trunk: [String: String] = [:]) {
        self.isEngineEnable = isEngineEnable
        self.isTrunkOpen = isTrunkOpen
        self.trunk = trunk
    }
    
    func switchEngineState() {
        isEngineEnable = !isEngineEnable
    }
    
    func switchTrunkState() {
        isTrunkOpen = !isTrunkOpen
    }
    
    func reproduceSignal() {
        print("Beep-Beep!")
    }
    
    func addToTrunk(_ item: String) {
        if isTrunkOpen {
            trunk[item] = item
        }
    }
    
    func selectFromTrunk(_ item: String) -> String {
        var baggage: String?
        
        if isTrunkOpen {
            baggage = trunk.removeValue(forKey: item)
            if let baggage = baggage {
                return baggage
            }
        }
        return "nothing"
    }
    
}
