//
//  Therapy+CoreDataClass.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Therapy)
public class Therapy: NSManagedObject {

    static var demo: Therapy {
        let therapy = Therapy()
        return therapy
    }
}
