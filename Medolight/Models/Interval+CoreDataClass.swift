//
//  Interval+CoreDataClass.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Interval)
public class Interval: NSManagedObject {

    static var demo: Interval {
        let interval = Interval()
        return interval
    }

    var from: IntervalTime? {
        (times as! Set<IntervalTime>).min()
    }

    var to: IntervalTime? {
        let max = (times as! Set<IntervalTime>).max()
        return max != from ? max : nil
    }

    var string: String {
        if everyday { return "Ежедневно" }
        let intervalString: String
        if let from = from {
            if let to = to {
                if from.unit == to.unit {
                    intervalString = "\(from.value) - \(to.value) \(to.unit.string)"
                } else {
                    intervalString = "\(from.value) \(from.unit.string) - \(to.value) \(to.unit.string)"
                }
            } else {
                intervalString = "\(from.value) \(from.unit.string)"
            }
        } else {
            intervalString = "При необходимости"
        }
        let notesString: String
        switch (systematically, necessary) {
        case (true, true):
            notesString = "\(intervalString) (систематически и при необходимости)"
        case (true, false):
            notesString = "\(intervalString) (систематически)"
        case (false, true):
            notesString = "\(intervalString) (и при необходимости)"
        case (false, false):
            notesString = "\(intervalString)"
        }
        return notesString
    }
}
