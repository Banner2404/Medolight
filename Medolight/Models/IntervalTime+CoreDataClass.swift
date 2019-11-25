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
public class IntervalTime: NSManagedObject {

    var value: Int {
        get { Int(value64) }
        set { value64 = Int64(newValue) }
    }
}
