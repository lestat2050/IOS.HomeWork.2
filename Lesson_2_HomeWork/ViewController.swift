//
//  ViewController.swift
//  Lesson_2_HomeWork
//
//  Created by Yaroslav Surovtsev on 06.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let bmw = Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmw.switchEngineState()
        bmw.switchEngineState()
        bmw.reproduceSignal()
        bmw.switchTrunkState()
        bmw.addToTrunk(item: "Apple")
        let baggage = bmw.getFromTrunk(item: "Apple")
        print("I take \(baggage)")
        bmw.switchTrunkState()
    }

}

