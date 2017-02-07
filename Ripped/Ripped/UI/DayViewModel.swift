//
//  File.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 2/7/17.
//  Copyright © 2017 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class DayViewModel: TableViewModel {
    
    // MARK: - Properties
    
    private var day: Day
    
    // MARK: - Initialization
    
    init(day: Day) {
        self.day = day
        super.init()
    }
    
    // MARK: - Overriden
    
    override var title: String? {
        return day.fullName
    }
    
//    override var numberOfRows: Int {
//        return 0
//    }
//    
//    override func textForCellAtRow(row: Int) -> String? {
//        return day(atRow: row).cellTitle
//    }
//    
//    override func detailTextForCellAtRow(row: Int) -> String? {
//        return day(atRow: row).targetParts
//    }
    
    // MARK: - Private
    
//    func day(atRow row: Int) -> Day {
//        return week.days[row]
//    }
}
