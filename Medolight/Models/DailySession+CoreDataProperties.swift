//
//  DailySession+CoreDataProperties.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData


extension DailySession {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DailySession> {
        return NSFetchRequest<DailySession>(entityName: "DailySession")
    }

    @NSManaged public var from64: Int64
    @NSManaged public var to64: Int64
    @NSManaged public var night: Bool

}
