//
//  IntervalTime+CoreDataClass.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData

@objc(IntervalTime)
public class IntervalTime: NSManagedObject, Comparable {

    var value: Int {
        get { Int(value64) }
        set { value64 = Int64(newValue) }
    }

    var unit: Unit {
        get { Unit(rawValue: unitString)! }
        set { unitString = newValue.rawValue }
    }

    public static func < (lhs: IntervalTime, rhs: IntervalTime) -> Bool {
        if lhs.unit != rhs.unit { return lhs.unit < rhs.unit }
        return lhs.value < rhs.value
    }

    enum Unit: String, Comparable {
        case day
        case month

        var sortIndex: Int {
            switch self {
            case .day:
                return 1
            case .month:
                return 2
            }
        }

        var string: String {
            switch self {
            case .day:
                return "дней"
            case .month:
                return "месяца"
            }
        }

        public static func < (lhs: Unit, rhs: Unit) -> Bool {
            return lhs.sortIndex < rhs.sortIndex
        }
    }
}
