//
//  Week.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation
import RealmSwift

class Week {
    weak var program: Program?
    let number: Int
    let completed: Bool
    let days: [Day]
    
    init(number: Int, completed: Bool, days: [Day]) {
        self.number = number
        self.completed = completed
        self.days = days
        
        days.forEach { $0.week = self }
    }
}

extension Week {
    var name: String {
        return "Week \(number)"
    }
}

extension Week: CellTitleProviding {
    var cellTitle: String {
        return name + (completed ? " ✓" : "")
    }
}

final class ManagedWeek: Object {
    dynamic var program: ManagedProgram?
    dynamic var number = 0
    dynamic var completed = false
    let days = LinkingObjects(fromType: ManagedDay.self, property: "week")
}
