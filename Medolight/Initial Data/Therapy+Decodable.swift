//
//  Therapy+Decodable.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import Foundation

extension Therapy {

    struct Wrapper: Decodable {

        let value: Therapy

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let session = try container.decode(DailySession.Wrapper.self, forKey: .session)
            let interval = try container.decode(Interval.Wrapper.self, forKey: .interval)

            let context = AppDelegate.shared.database.persistentContainer.viewContext
            let value = Therapy(context: context)
            value.session = session.value
            value.interval = interval.value
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case session
            case interval
        }
    }
}
