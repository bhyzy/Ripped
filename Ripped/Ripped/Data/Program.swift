//
//  Program.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class Program {
    let name: String
    let completed: Bool
    let weeks: [Week]
    
    init(name: String, completed: Bool, weeks: [Week]) {
        self.name = name
        self.completed = completed
        self.weeks = weeks
    }
}

extension Program: CellTitleProviding {
    var cellTitle: String {
        return name + (completed ? " ✓" : "")
    }
}
