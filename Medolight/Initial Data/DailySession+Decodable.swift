//
//  DailySession+Decodable.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import Foundation

extension DailySession {

    struct Wrapper: Decodable {

        let value: DailySession

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let from = try container.decode(Int.self, forKey: .from)
            let to = try? container.decode(Int.self, forKey: .to)
            let night = try container.decode(Bool.self, forKey: .night)

            let context = AppDelegate.shared.database.persistentContainer.viewContext
            let value = DailySession(context: context)
            value.from = from
            value.to = to
            value.night = night
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case from
            case to
            case night
        }
    }
}
