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
        let program = Program()
        return program
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
}
