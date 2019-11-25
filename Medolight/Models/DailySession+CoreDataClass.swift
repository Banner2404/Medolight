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

    override var string: String {
        let numberString: String
        if let to = to {
            numberString = String(format: "%d - %d в день", from, to)
        } else {
            numberString = String(format: "%d в день", from)
        }
        let resultString: String
        if night {
            resultString = String(format: "%@ (на ночь)", numberString)
        } else {
            resultString = String(format: "%@", numberString)
        }
        return resultString
    }

    var from: Int {
        get { Int(from64) }
        set { from64 = Int64(newValue) }
    }

    var to: Int? {
        get { to64 > 0 ? Int(to64) : nil }
        set { to64 = Int64(newValue ?? 0) }
    }
}
