//
//  ProgramListViewModel.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 1/15/17.
//  Copyright © 2017 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class ProgramListViewModel: TableViewModel {
    
    // MARK: - Properties
    
    private let dataProvider: DataProviding
    
    // MARK: - Initialization
    
    init(dataProvider: DataProviding) {
        self.dataProvider = dataProvider
        super.init()
    }
    
    // MARK: - Overriden
    
    override var title: String? {
        return NSLocalizedString("Programs", comment: "")
    }
    
    override var numberOfRows: Int {
        return dataProvider.programs.count
    }
 
    override func textForCellAtRow(row: Int) -> String? {
        return program(atRow: row).cellTitle
    }
    
    // MARK: - Internal
    
    func program(atRow row: Int) -> Program {
        return dataProvider.programs[row]
    }
}
