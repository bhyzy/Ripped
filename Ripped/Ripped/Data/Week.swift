//
//  Week.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

struct Week {
    let number: Int
    let completed: Bool
    let days: [Day]
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
