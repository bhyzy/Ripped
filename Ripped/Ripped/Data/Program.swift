//
//  Program.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation
import RealmSwift

class Program {
    let name: String
    let completed: Bool
    let weeks: [Week]
    
    init(name: String, completed: Bool, weeks: [Week]) {
        self.name = name
        self.completed = completed
        self.weeks = weeks
        
        weeks.forEach { $0.program = self }
    }
}

extension Program: CellTitleProviding {
    var cellTitle: String {
        return name + (completed ? " ✓" : "")
    }
}

final class ManagedProgram: Object {
    dynamic var id = ""
    dynamic var name = ""
    dynamic var completed = false
    let weeks = LinkingObjects(fromType: ManagedWeek.self, property: "program")
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
