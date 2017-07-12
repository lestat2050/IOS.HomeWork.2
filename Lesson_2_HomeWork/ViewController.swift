//
//  ViewController.swift
//  Lesson_2_HomeWork
//
//  Created by Yaroslav Surovtsev on 06.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let someCar = Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someCar.switchEngineState()
        someCar.switchEngineState()
        someCar.reproduceSignal()
        someCar.switchTrunkState()
        someCar.putInTrunk(key: "Apple", name: "Apple")
        someCar.takeFromTrunk(key: "Apple")
        someCar.switchTrunkState()
    }

}

