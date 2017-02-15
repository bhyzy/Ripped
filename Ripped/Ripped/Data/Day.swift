//
//  Day.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation
import RealmSwift

class Day {
    weak var week: Week?
    let number: Int
    let targetParts: String?
    let completionDate: Date?
    let exercises: [Exercise]
    
    init(number: Int, targetParts: String?, completionDate: Date?, exercises: [Exercise]) {
        self.number = number
        self.targetParts = targetParts
        self.completionDate = completionDate
        self.exercises = exercises
        
        exercises.forEach { $0.day = self }
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

final class ManagedDay: Object {
    dynamic var week: ManagedWeek?
    dynamic var number = 0
    dynamic var targetParts: String?
    dynamic var completionDate: Date?
    let exercises = LinkingObjects(fromType: ManagedExercise.self, property: "day")
}
