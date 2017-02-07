//
//  Exercise.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class Exercise {
    weak var day: Day?
    let name: String
    let needsWarmup: Bool
    let numberOfWorkingSets: Int
    let comment: String?
    let sets: [Set]
    
    init(name: String, needsWarmup: Bool, numberOfWorkingSets: Int, comment: String?, sets: [Set]) {
        self.name = name
        self.needsWarmup = needsWarmup
        self.numberOfWorkingSets = numberOfWorkingSets
        self.comment = comment
        self.sets = sets
        
        sets.forEach { $0.exercise = self }
    }
}

extension Exercise {
    var goal: String {
        return (needsWarmup ? "WA + " : "") + "\(numberOfWorkingSets)WS"
    }
}
