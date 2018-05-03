//
//  Project.swift
//  WorkTime
//
//  Created by Szymon Szysz on 01.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import Foundation
import RealmSwift

public final class Project: Object {
    
    
    @objc dynamic var name: String?
    @objc dynamic var client: String?
    @objc dynamic var platform: String?
    @objc dynamic var api: String?
    @objc dynamic var time = 0
    @objc dynamic var info: String?
    @objc dynamic var extraInfo: String?
    @objc dynamic var project_id: String?
    
    
    private struct SerializationKeys {
        
        static let name = "name"
        static let client = "client"
        static let platform = "platform"
        static let api = "api"
        static let time = "time"
        static let info = "info"
        static let extraInfo = "extraInfo"
        static let project_id = "project_id"
        
    }
    
    override public static func primaryKey() -> String? {
        
        return "project_id"
        
    }
    
}
