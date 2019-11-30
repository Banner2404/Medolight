//
//  IntervalTime+CoreDataProperties.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/30/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData


extension IntervalTime {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<IntervalTime> {
        return NSFetchRequest<IntervalTime>(entityName: "IntervalTime")
    }

    @NSManaged public var unitString: String
    @NSManaged public var value64: Int64
    @NSManaged public var interval: Interval?
    @NSManaged public var courses: NSSet?

}

// MARK: Generated accessors for courses
extension IntervalTime {

    @objc(addCoursesObject:)
    @NSManaged public func addToCourses(_ value: Course)

    @objc(removeCoursesObject:)
    @NSManaged public func removeFromCourses(_ value: Course)

    @objc(addCourses:)
    @NSManaged public func addToCourses(_ values: NSSet)

    @objc(removeCourses:)
    @NSManaged public func removeFromCourses(_ values: NSSet)

}
