//
//  Course+CoreDataClass.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/30/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Course)
public class Course: NSManagedObject {

    static var demo: Course {
        return try! AppDelegate.shared.database.persistentContainer.viewContext.fetch(fetchRequest()).first as! Self
    }

    public override func willChangeValue(forKey key: String) {
        super.willChangeValue(forKey: key)
        objectWillChange.send()
    }
}
