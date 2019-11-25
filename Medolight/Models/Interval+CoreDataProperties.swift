//
//  Interval+CoreDataProperties.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData


extension Interval {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Interval> {
        return NSFetchRequest<Interval>(entityName: "Interval")
    }

    @NSManaged public var systematically: Bool
    @NSManaged public var necessary: Bool
    @NSManaged public var everyday: Bool
    @NSManaged public var times: NSSet
    @NSManaged public var therapy: Therapy

}

// MARK: Generated accessors for times
extension Interval {

    @objc(addTimesObject:)
    @NSManaged public func addToTimes(_ value: IntervalTime)

    @objc(removeTimesObject:)
    @NSManaged public func removeFromTimes(_ value: IntervalTime)

    @objc(addTimes:)
    @NSManaged public func addToTimes(_ values: NSSet)

    @objc(removeTimes:)
    @NSManaged public func removeFromTimes(_ values: NSSet)

}
