//
//  Set.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class Set {
    weak var exercise: Exercise?
    let weight: Double
    let numberOfRepetitions: Int
    
    init(weight: Double, numberOfRepetitions: Int) {
        self.weight = weight
        self.numberOfRepetitions = numberOfRepetitions
    }
}
