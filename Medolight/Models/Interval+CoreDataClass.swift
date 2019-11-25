//
//  Interval+CoreDataClass.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Interval)
public class Interval: NSManagedObject {

    static var demo: Interval {
        let interval = Interval()
        return interval
    }

    var string: String {
        "Time"
    }
}
