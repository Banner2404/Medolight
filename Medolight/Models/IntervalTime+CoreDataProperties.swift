//
//  IntervalTime+CoreDataProperties.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData


extension IntervalTime {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<IntervalTime> {
        return NSFetchRequest<IntervalTime>(entityName: "IntervalTime")
    }

    @NSManaged public var unit: String
    @NSManaged public var value64: Int64
    @NSManaged public var interval: Interval

}
