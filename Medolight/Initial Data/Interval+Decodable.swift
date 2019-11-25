//
//  Interval+Decodable.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import Foundation

extension Interval {

    struct Wrapper: Decodable {

        let value: Interval

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let from = try container.decode(IntervalTime.Wrapper.self, forKey: .from)
            let to = try container.decode(IntervalTime.Wrapper.self, forKey: .to)
            let systematically = try container.decode(Bool.self, forKey: .systematically)
            let necessary = try container.decode(Bool.self, forKey: .necessary)
            let everyday = try container.decode(Bool.self, forKey: .everyday)

            let context = AppDelegate.shared.database.persistentContainer.viewContext
            let value = Interval(context: context)
            value.addToTimes([from.value, to.value])
            value.systematically = systematically
            value.necessary = necessary
            value.everyday = everyday
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case from
            case to
            case systematically
            case necessary
            case everyday
        }
    }
}
