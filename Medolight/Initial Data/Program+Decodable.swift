//
//  Program+Decodable.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/24/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import Foundation

extension Program {

    struct Wrapper: Decodable {

        let value: Program

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let name = try container.decode(String.self, forKey: .name)
            let details = try container.decode(String.self, forKey: .details)
            let mode = try container.decode(Int.self, forKey: .mode)
            let time = try container.decode(Int.self, forKey: .time)
            let therapy = try container.decode([Therapy.Wrapper].self, forKey: .therapy)

            let context = AppDelegate.shared.database.persistentContainer.viewContext
            let value = Program(context: context)
            value.name = name
            value.details = details
            value.mode = mode
            value.time = time
            value.therapy = therapy.map { $0.value }
            self.value = value
        }

        enum CodingKeys: String, CodingKey {
            case name
            case details
            case mode
            case time
            case therapy
        }
    }
}
