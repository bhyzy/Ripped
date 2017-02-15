//
//  Set.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation
import RealmSwift

class Set {
    weak var exercise: Exercise?
    let weight: Double
    let numberOfRepetitions: Int
    
    init(weight: Double, numberOfRepetitions: Int) {
        self.weight = weight
        self.numberOfRepetitions = numberOfRepetitions
    }
}

final class ManagedSet: Object {
    dynamic var exercise: ManagedExercise?
    dynamic var weight = 0.0
    dynamic var numberOfRepetitions = 0
}
