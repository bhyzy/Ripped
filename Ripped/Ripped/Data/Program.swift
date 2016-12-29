//
//  Program.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

struct Program {
    let name: String
    let completed: Bool
    let weeks: [Week]
}

extension Program: CellTitleProviding {
    var cellTitle: String {
        return name + (completed ? " ✓" : "")
    }
}
