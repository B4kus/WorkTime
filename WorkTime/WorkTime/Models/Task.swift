//
//  Task.swift
//  WorkTime
//
//  Created by Szymon Szysz on 05.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import Foundation
import RealmSwift


class Task: Object {
    
    @objc dynamic var name: String?
    @objc dynamic var task: String?
    @objc dynamic var time = 0
    @objc dynamic var priority: String?
    @objc dynamic var extraInfo: String?
    @objc dynamic var task_id: String?
    
    
    private struct SerializationKeys {
        
        static let name = "name"
        static let task = "task"
        static let time = "time"
        static let priority = "priority"
        static let extraInfo = "extraInfo"
        static let task_id = "task_id"
        
    }
    
    override public static func primaryKey() -> String? {
        
        return "task_id"
        
    }
    
}
