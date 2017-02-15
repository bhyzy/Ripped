//
//  Exercise.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation
import RealmSwift

class Exercise {
    weak var day: Day?
    let name: String
    let needsWarmup: Bool
    let numberOfWorkingSets: Int
    let comment: String?
    let sets: [Set]
    
    init(name: String, needsWarmup: Bool, numberOfWorkingSets: Int, comment: String?, sets: [Set]) {
        self.name = name
        self.needsWarmup = needsWarmup
        self.numberOfWorkingSets = numberOfWorkingSets
        self.comment = comment
        self.sets = sets
        
        sets.forEach { $0.exercise = self }
    }
}

extension Exercise {
    var goal: String {
        return (needsWarmup ? "WA + " : "") + "\(numberOfWorkingSets)WS"
    }
}

extension Exercise {
    var previousOccurence: Exercise? {
        guard let day = day, let week = day.week, let program = week.program else {
            return nil
        }
        
        let previousDaysThisWeek = week.days.filter { $0.number < day.number }
        let previousWeeksDays = program.weeks.filter { $0.number < week.number }.flatMap { $0.days }
        let allPreviousDays = previousDaysThisWeek + previousWeeksDays
        
        let sameExercises = allPreviousDays.flatMap { $0.exercises }.filter { $0.name == name }
        return sameExercises.last
    }
}

final class ManagedExercise: Object {
    dynamic var day: ManagedDay?
    dynamic var name = ""
    dynamic var needsWarmup = false
    dynamic var numberOfWorkingSets = 0
    dynamic var comment: String?
    let sets = LinkingObjects(fromType: ManagedSet.self, property: "exercise")
}
