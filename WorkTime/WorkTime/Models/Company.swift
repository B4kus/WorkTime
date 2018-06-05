//
//  Company.swift
//
//  Created by Szymon Szysz on 12/05/2018
//  Copyright (c) . All rights reserved.
//

import Foundation
import ObjectMapper

public final class Company {

  
  private struct SerializationKeys {
    static let users = "users"
    static let usersMaster = "users_master"
  }


  public var users: [Users]?
  public var usersMaster: [UsersMaster]?


  public required init?(map: Map){

  }





}
