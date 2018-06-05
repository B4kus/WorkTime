//
//  Projects.swift
//
//  Created by Szymon Szysz on 10/05/2018
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

public final class Projects: Object, Decodable {
    
    @objc dynamic var name : String?
    @objc dynamic var client : String?
    @objc dynamic var platform : String?
    @objc dynamic var api : String?
    @objc dynamic var time: String?
    @objc dynamic var info : String?
    @objc dynamic var extraInfo : String?
    @objc dynamic var project_id : String?
    @objc dynamic var user_master_id : String?
    @objc dynamic var project_data: String?
    
    
    private struct SerializationKeys {
        
        static let name = "name"
        static let client = "client"
        static let platform = "platform"
        static let api = "api"
        static let info = "info"
        static let extraInfo = "extraInfo"
        static let project_id = "project_id"
        static let user_master_id = "user_master_id"
        static let task = "task"
        static let project_data = "project_data"
        static let time = "time"
        
    }
    
    required convenience public init?(map: Map) {
        
        self.init()
        
    }
    override public static func primaryKey() -> String? {
        
        return "project_id"
        
    }
    
 
}
    
    


