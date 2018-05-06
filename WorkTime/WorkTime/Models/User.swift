//
//  User.swift
//  WorkTime
//
//  Created by Szymon Szysz on 06.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import Foundation
import RealmSwift
class User: Object {
    
    @objc dynamic var name: String?
    @objc dynamic var email: String?
    @objc dynamic var password: String?
    @objc dynamic var phone: String?
    @objc dynamic var user_id: String?
    @objc dynamic var company_id: String?
   
    
    
    private struct SerializationKeys {
        
        static let name = "name"
        static let email = "email"
        static let password = "password"
        static let phone = "phone"
        static let user_id = "user_id"
        static let company_id = "company_id"
        
    }
    
    override public static func primaryKey() -> String? {
        
        return "user_id"
        
    }
  
}
