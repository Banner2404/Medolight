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

    static var demo: IntervalTime {
        return try! AppDelegate.shared.database.persistentContainer.viewContext.fetch(fetchRequest()).first as! Self
    }

    var value: Int {
        get { Int(value64) }
        set { value64 = Int64(newValue) }
    }

    var unit: Unit {
        get { Unit(rawValue: unitString)! }
        set { unitString = newValue.rawValue }
    }

    var string: String {
        return "\(value) \(unit.string)"
    }

    public static func < (lhs: IntervalTime, rhs: IntervalTime) -> Bool {
        if lhs.unit != rhs.unit { return lhs.unit < rhs.unit }
        return lhs.value < rhs.value
    }

    public override func willChangeValue(forKey key: String) {
        super.willChangeValue(forKey: key)
        objectWillChange.send()
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
