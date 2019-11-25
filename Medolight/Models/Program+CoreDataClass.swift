//
//  Program+CoreDataClass.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Program)
public class Program: NSManagedObject {

    static var demo: Program {
        return try! AppDelegate.shared.database.persistentContainer.viewContext.fetch(fetchRequest()).first as! Self
    }

    var therapy: [Therapy] {
        get { Array(therapySet) as! [Therapy] }
        set { therapySet = NSSet(array: newValue) }
    }

    var mode: Int {
        get { Int(mode64) }
        set { mode64 = Int64(newValue) }
    }

    var time: Int {
        get { Int(time64) }
        set { time64 = Int64(newValue) }
    }

    public override func willChangeValue(forKey key: String) {
        super.willChangeValue(forKey: key)
        objectWillChange.send()
    }
}
