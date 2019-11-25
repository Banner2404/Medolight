//
//  IntervalTime+Decodable.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import Foundation

extension IntervalTime {

    struct Wrapper: Decodable {

        let value: IntervalTime

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let value = try container.decode(Int.self, forKey: .value)
            let unit = try container.decode(String.self, forKey: .unit)

            let context = AppDelegate.shared.database.persistentContainer.viewContext
            let intervalTime = IntervalTime(context: context)
            intervalTime.value = value
            intervalTime.unit = unit
            self.value = intervalTime
        }

        enum CodingKeys: String, CodingKey {
            case value
            case unit
        }
    }
}
