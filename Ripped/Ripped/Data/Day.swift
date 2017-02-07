//
//  Day.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class Day {
    let number: Int
    let targetParts: String?
    let completionDate: Date?
    let exercises: [Exercise]
    
    init(number: Int, targetParts: String?, completionDate: Date?, exercises: [Exercise]) {
        self.number = number
        self.targetParts = targetParts
        self.completionDate = completionDate
        self.exercises = exercises
    }
}

extension Day {
    var name: String {
        return "Day \(number)"
    }
    var fullName: String {
        return name + (targetParts != nil ? ": \(targetParts!)" : "")
    }
}

extension Day: CellTitleProviding {
    var cellTitle: String {
        return name + (completionDate != nil ? " ✓" : "")
    }
}

