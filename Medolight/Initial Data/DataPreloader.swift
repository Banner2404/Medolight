//
//  DataPreloader.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/25/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import Foundation
import CoreData

class DataPreloader {

    private let database: Database
    private let databaseVersion = 1

    init(database: Database) {
        self.database = database
    }

    func preload() {
        let currentVersion = UserDefaults.standard.integer(forKey: Key.databaseVersion.rawValue)
        guard currentVersion < databaseVersion else { return }
        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        guard let programObjects = try? JSONDecoder().decode([Program.Wrapper].self, from: data) else { return }
        _ = programObjects.map { $0.value }
        database.saveContext()
        UserDefaults.standard.set(databaseVersion, forKey: Key.databaseVersion.rawValue)
    }

    enum Key: String {
        case databaseVersion
    }
}
