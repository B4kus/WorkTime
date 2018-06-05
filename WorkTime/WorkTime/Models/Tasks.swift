//
//  Tasks.swift
//
//  Created by Szymon Szysz on 12/05/2018
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

public final class Tasks: Object, Codable{
    
    
    @objc dynamic var name: String?
    @objc dynamic var extra_info: String?
    @objc dynamic var task_id: String?
    @objc dynamic var user_id: String?
    @objc dynamic var priority: String?
    @objc dynamic var time: String?
    @objc dynamic var task: String?
    @objc dynamic var task_data: String?
    @objc dynamic var used_time: String?
    @objc dynamic var project_id: String?
    
    
    private struct SerializationKeys {
        static let extra_info = "extra_info"
        static let used_time = "used_time"
        static let name = "name"
        static let task_data = "task_data"
        static let task_id = "task_id"
        static let user_id = "user_id"
        static let time = "time"
        static let task = "task"
        static let priority = "priority"
        static let project_id = "project_id"
    }
    
    required convenience public init?(map: Map) {
        
        self.init()
        
    }
    override public static func primaryKey() -> String? {
        
        return "task_id"
        
    }

}
