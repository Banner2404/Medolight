//
//  DailySession+CoreDataClass.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//
//

import Foundation
import CoreData

@objc(DailySession)
public class DailySession: Session {

    static var demo: DailySession {
        let session = DailySession()
        return session
    }

    var from: Int {
        get { Int(from64) }
        set { from64 = Int64(newValue) }
    }

    var to: Int? {
        get { Int(to64) }
        set { to64 = Int64(newValue ?? 0) }
    }
}
