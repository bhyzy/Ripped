//
//  WeekViewModel.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 2/7/17.
//  Copyright © 2017 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class WeekViewModel: TableViewModel {
    
    // MARK: - Properties
    
    private var week: Week
    
    // MARK: - Initialization
    
    init(week: Week) {
        self.week = week
        super.init()
    }
    
    // MARK: - Overriden
    
    override var title: String? {
        return week.name
    }
    
    override var numberOfRows: Int {
        return week.days.count
    }
    
    override func textForCellAtRow(row: Int) -> String? {
        return day(atRow: row).cellTitle
    }
    
    override func detailTextForCellAtRow(row: Int) -> String? {
        return day(atRow: row).targetParts
    }
    
    // MARK: - Internal
    
    func day(atRow row: Int) -> Day {
        return week.days[row]
    }
}
