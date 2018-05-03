//
//  DBManager.swift
//  WorkTime
//
//  Created by Szymon Szysz on 03.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import Foundation
import RealmSwift
class DBManager {
    
    let realm = try! Realm()
    
    /**
     Delete local database
     */
    func deleteDatabase() {
        try! realm.write({
            realm.deleteAll()
        })
    }
    
    /**
     Save array of objects to database
     */
    func saveObjects(objs: [Object]) {
        try! realm.write({
            // If update = true, objects that are already in the Realm will be
            // updated instead of added a new.
            realm.add(objs, update: true)
        })
    }
    
    /**
     Returs an array as Results<object>?
     */
    func getObjects(type: Object.Type) -> Results<Object>? {
        return realm.objects(type)
    }
}

