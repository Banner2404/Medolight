//
//  Program+CoreDataProperties.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData


extension Program {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Program> {
        return NSFetchRequest<Program>(entityName: "Program")
    }

    @NSManaged public var name: String
    @NSManaged public var details: String
    @NSManaged public var mode64: Int64
    @NSManaged public var time64: Int64
    @NSManaged public var therapySet: NSSet

}

// MARK: Generated accessors for therapy
extension Program {

    @objc(addTherapyObject:)
    @NSManaged public func addToTherapy(_ value: Therapy)

    @objc(removeTherapyObject:)
    @NSManaged public func removeFromTherapy(_ value: Therapy)

    @objc(addTherapy:)
    @NSManaged public func addToTherapy(_ values: NSSet)

    @objc(removeTherapy:)
    @NSManaged public func removeFromTherapy(_ values: NSSet)

}
