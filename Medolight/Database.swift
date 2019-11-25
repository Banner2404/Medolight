//
//  Database.swift
//  Medolight
//
//  Created by Евгений Соболь on 11/25/19.
//  Copyright © 2019 Esobol. All rights reserved.
//

import Foundation
import CoreData

class Database {

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Medolight")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}
