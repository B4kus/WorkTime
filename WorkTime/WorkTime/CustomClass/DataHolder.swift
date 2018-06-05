//
//  DataHolder.swift
//  WorkTime
//
//  Created by Szymon Szysz on 20.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import Foundation
class DataHolder {
    static let sharedInstance = DataHolder()
    
    var apiCall = API()
    var projectData = [Projects]()
    var userData = [Users]()
    var taskData = [Tasks]()
    var userLogged = Users()

    
    
    func networProject(complitionBlock: @escaping (Bool, Error?) -> Void ){
        
        
       
        apiCall.getData(link: .Projects) { (result) in
            
            do {
                
                let projects = try JSONDecoder().decode([Projects].self, from: result)
                self.projectData = projects
                complitionBlock(true,nil)
                
            } catch let error {
            
                print(error)
                complitionBlock(false,error)
            }
        }
    }
    
    func networkUser(complitionBlock: @escaping (Bool, Error?) -> Void ) {
       
        apiCall.getData(link: .User) { (result) in
            
            do {
                
                let users = try JSONDecoder().decode([Users].self, from: result)
                self.userData = users
                complitionBlock(true,nil)
                
            } catch let error {
                
                print(error)
                complitionBlock(false,error)
            }
        }
    }
    
    
    
    func networkTasks(complitionBlock: @escaping (Bool, Error?) -> Void ) {

        apiCall.getData(link: .Tasks) { (result) in
            
            do {
                
                let tasks = try JSONDecoder().decode([Tasks].self, from: result)
                self.taskData = tasks
                complitionBlock(true,nil)
                
            } catch let error {
                
                print(error)
                complitionBlock(false,error)
            }
        }
    }
    
    func refrshData(complitionBlock:@escaping (Bool)-> Void) {
        
        networkUser { (succes, _) in
            if succes {
                self.networkTasks { (succes, _) in
                    if succes {
                        self.networProject { (succes, _) in}
                        if succes {
                            complitionBlock(true)
                            
                        }
                    }
                }
                
            }
        }
        
        
        
        
        
    }

    
}
