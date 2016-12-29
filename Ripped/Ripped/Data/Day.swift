//
//  Day.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

struct Day {
    let number: Int
    let targetParts: String?
    let completionDate: Date?
    let exercises: [Exercise]
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

