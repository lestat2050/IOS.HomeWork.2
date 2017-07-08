//
//  ViewController.swift
//  Lesson_2_HomeWork
//
//  Created by Yaroslav Surovtsev on 06.07.17.
//  Copyright © 2017 Yaroslav Surovtsev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myCar = Car()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCar.enableEngine()
        myCar.disableEngine()
        myCar.sayBeepBeep()
        myCar.openTrunk()
        myCar.putToTrunk(name: "Apple")
        myCar.removeFromTrunk(name: "Apple")
        myCar.closeTrunk()
    }

}

