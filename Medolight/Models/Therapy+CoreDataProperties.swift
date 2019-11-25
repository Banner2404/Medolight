//
//  Therapy+CoreDataProperties.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData


extension Therapy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Therapy> {
        return NSFetchRequest<Therapy>(entityName: "Therapy")
    }

    @NSManaged public var session: Session
    @NSManaged public var interval: Interval
    @NSManaged public var program: Program

}
