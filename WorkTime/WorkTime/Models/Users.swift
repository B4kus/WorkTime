//
//  Users.swift
//
//  Created by Szymon Szysz on 23/05/2018
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift

public final class Users: Object, Decodable{

    @objc dynamic var company_id: String?
    @objc dynamic var name: String?
    @objc dynamic var email: String?
    @objc dynamic var password: String?
    @objc dynamic var phone: String?
    @objc dynamic var user_id: String?
    @objc dynamic var type: String?
    
    
  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let company_id = "company_id"
    static let name = "name"
    static let email = "email"
    static let password = "password"
    static let phone = "phone"
    static let user_id = "user_id"
    static let type = "type"
  }

  // MARK: Properties
  

  // MARK: ObjectMapper Initializers
  /// Map a JSON object to this class using ObjectMapper.
  ///
  /// - parameter map: A mapping from ObjectMapper.
    required convenience public init?(map: Map) {
        
        self.init()
        
    }
    override public static func primaryKey() -> String? {
        
        return "user_id"
        
    }
    
}
