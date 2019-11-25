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
            numberString = "\(from) - \(to) в день"
        } else {
            numberString = "\(from) в день"
        }
        let resultString: String
        if night {
            resultString = "\(numberString) (на ночь)"
        } else {
            resultString = numberString
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
