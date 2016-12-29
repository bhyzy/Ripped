//
//  MockDataProvider.swift
//  Ripped
//
//  Created by Bartlomiej Hyzy on 12/28/16.
//  Copyright © 2016 Bartlomiej Hyzy. All rights reserved.
//

import Foundation

class MockDataProvider: DataProviding {
    let programs: [Program] = {
        return [MockDataProvider.program1(),
                MockDataProvider.program2()]
    }()
    
    private class func program1() -> Program {
        return Program(name: "Test Program", completed: true, weeks: [
            Week(number: 1, completed: true, days: [
                Day(number: 1, targetParts: "Chest & Calves", completionDate: date(year: 2016, month: 12, day: 1), exercises: [
                    Exercise(name: "Incline Barbell Bench Press", needsWarmup: true, numberOfWorkingSets: 3, comment: "No pain no gain!", sets: [
                        Set(weight: 50.0, numberOfRepetitions: 6),
                        Set(weight: 55.0, numberOfRepetitions: 5),
                        Set(weight: 55.0, numberOfRepetitions: 4)]),
                    Exercise(name: "Incline Dumbell Bench Press", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 20.0, numberOfRepetitions: 6),
                        Set(weight: 22.5, numberOfRepetitions: 5),
                        Set(weight: 25.0, numberOfRepetitions: 6)]),
                    Exercise(name: "Flat Barbell Bench Press", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 55.0, numberOfRepetitions: 6),
                        Set(weight: 60.0, numberOfRepetitions: 5),
                        Set(weight: 60.0, numberOfRepetitions: 5)])
                    ]),
                Day(number: 2, targetParts: "Back & Biceps", completionDate: date(year: 2016, month: 12, day: 2), exercises: [
                    Exercise(name: "Barbell Deadlift", needsWarmup: true, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 80.0, numberOfRepetitions: 5),
                        Set(weight: 85.0, numberOfRepetitions: 5),
                        Set(weight: 85.0, numberOfRepetitions: 5)]),
                    Exercise(name: "Wide-Grip Chin-up", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 20.0, numberOfRepetitions: 6),
                        Set(weight: 22.5, numberOfRepetitions: 5),
                        Set(weight: 25.0, numberOfRepetitions: 6)]),
                    Exercise(name: "One-Arm Dumbbell Row", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 30.0, numberOfRepetitions: 5),
                        Set(weight: 25.0, numberOfRepetitions: 6),
                        Set(weight: 25.0, numberOfRepetitions: 6)])
                    ])
                ])
            ])
    }
    
    private class func program2() -> Program {
        return Program(name: "Bigger Leaner Stronger", completed: false, weeks: [
            Week(number: 1, completed: true, days: [
                Day(number: 1, targetParts: "Chest & Calves", completionDate: date(year: 2016, month: 11, day: 1), exercises: [
                    Exercise(name: "Incline Barbell Bench Press", needsWarmup: true, numberOfWorkingSets: 3, comment: "Let's get buffed!!!", sets: [
                        Set(weight: 50.0, numberOfRepetitions: 6),
                        Set(weight: 50.0, numberOfRepetitions: 6),
                        Set(weight: 50.0, numberOfRepetitions: 6)]),
                    Exercise(name: "Incline Dumbell Bench Press", needsWarmup: false, numberOfWorkingSets: 3, comment: "Good workout", sets: [
                        Set(weight: 20.0, numberOfRepetitions: 6),
                        Set(weight: 22.5, numberOfRepetitions: 6),
                        Set(weight: 25.0, numberOfRepetitions: 6)]),
                    Exercise(name: "Flat Barbell Bench Press", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 55.0, numberOfRepetitions: 6),
                        Set(weight: 60.0, numberOfRepetitions: 5),
                        Set(weight: 60.0, numberOfRepetitions: 5)])
                    ]),
                Day(number: 2, targetParts: "Back & Biceps", completionDate: date(year: 2016, month: 11, day: 2), exercises: [
                    Exercise(name: "Barbell Deadlift", needsWarmup: true, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 80.0, numberOfRepetitions: 5),
                        Set(weight: 85.0, numberOfRepetitions: 5),
                        Set(weight: 85.0, numberOfRepetitions: 5)]),
                    Exercise(name: "Wide-Grip Chin-up", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 20.0, numberOfRepetitions: 6),
                        Set(weight: 22.5, numberOfRepetitions: 5),
                        Set(weight: 25.0, numberOfRepetitions: 6)]),
                    Exercise(name: "One-Arm Dumbbell Row", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [
                        Set(weight: 30.0, numberOfRepetitions: 5),
                        Set(weight: 25.0, numberOfRepetitions: 6),
                        Set(weight: 25.0, numberOfRepetitions: 6)])
                    ])
                ]),
            Week(number: 2, completed: false, days: [
                Day(number: 1, targetParts: "Chest & Calves", completionDate: nil, exercises: [
                    Exercise(name: "Incline Barbell Bench Press", needsWarmup: true, numberOfWorkingSets: 3, comment: nil, sets: []),
                    Exercise(name: "Incline Dumbell Bench Press", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: []),
                    Exercise(name: "Flat Barbell Bench Press", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [])
                    ]),
                Day(number: 2, targetParts: "Back & Biceps", completionDate: nil, exercises: [
                    Exercise(name: "Barbell Deadlift", needsWarmup: true, numberOfWorkingSets: 3, comment: nil, sets: []),
                    Exercise(name: "Wide-Grip Chin-up", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: []),
                    Exercise(name: "One-Arm Dumbbell Row", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [])
                    ]),
                Day(number: 3, targetParts: "Upper Body & Calves", completionDate: nil, exercises: [
                    Exercise(name: "Side Lateral Raise", needsWarmup: true, numberOfWorkingSets: 3, comment: nil, sets: []),
                    Exercise(name: "Seated Rear Delt Raise", needsWarmup: true, numberOfWorkingSets: 3, comment: nil, sets: []),
                    Exercise(name: "Leg Press Calf Raise", needsWarmup: true, numberOfWorkingSets: 3, comment: nil, sets: []),
                    Exercise(name: "Leg Press Calf Raise", needsWarmup: false, numberOfWorkingSets: 3, comment: nil, sets: [])
                    ])
                ])
            ])
    }
    
    private class func date(year: Int, month: Int, day: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        
        return Calendar(identifier: .gregorian).date(from: dateComponents)!
    }
}
