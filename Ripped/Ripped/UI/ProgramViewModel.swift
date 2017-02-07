//
//  ProgramViewModel.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 2/7/17.
//  Copyright © 2017 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class ProgramViewModel: TableViewModel {
    
    // MARK: - Properties
    
    private var program: Program
    
    // MARK: - Initialization
    
    init(program: Program) {
        self.program = program
        super.init()
    }
    
    // MARK: - Overriden
    
    override var title: String? {
        return program.name
    }
    
    override var numberOfRows: Int {
        return program.weeks.count
    }
    
    override func textForCellAtRow(row: Int) -> String? {
        return week(atRow: row).cellTitle
    }
    
    // MARK: - Private
    
    func week(atRow row: Int) -> Week {
        return program.weeks[row]
    }
}
