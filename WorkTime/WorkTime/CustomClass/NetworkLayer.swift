//
//  DownloadHandler.swift
//  NetiApp
//
//  Created by Szymon Szysz on 08.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import Foundation
import Moya

enum URLService {
    case User
    case Tasks
    case Projects
    case Company
    case UserTasks(user_id: String)
    case AddUser(user_id: String, name: String, email: String, password: String, phone: String, type: String, company_id: String)
    case AddTask(name: String, task_id: String, user_id: String, priority: String, time: String, task: String, task_date: String, used_time: String, project_id: String)
    case AddProject(name: String, client: String, platform: String, api: String, time: String, info: String, extra_info: String, project_id: String, user_master_id: String, project_date: String)
    case EditUser(user_id: String, name: String, email: String, password: String, phone: String, type: String, company_id: String)
    case UpDateTime(used_time: String, task_id: String)
    
}

enum NetworkManager {
    
    case production
    case qa
    case staging
    case environment
    
    
}
extension URLService: TargetType {
    
    var environmentBaseURL : String {
        
        switch NetworkManager.production {
        case .production : return "http://155.158.135.197/WorkTime"
        case .qa: return "url"
        case .staging: return "url4"
        case .environment: return "ups"
        }
        
        
        
    }
    var baseURL: URL {
        guard let url = URL(string: "http://155.158.135.197/WorkTime") else {fatalError("base URL could not be configured")}
        return url
    }
    
    var path: String {
        switch self {
            
        case .Tasks: return "/JSON.php"
        case .Projects: return "/JSON.php"
        case .User: return "/JSON.php"
        case .Company: return "/JSON.php"
        case .AddUser(_,_,_,_,_,_,_): return "/add.php"
        case .AddTask(_,_,_,_,_,_,_,_,_): return "/add.php"
        case .AddProject(_,_,_,_,_,_,_,_,_,_): return "/add.php"
        case .EditUser(_,_,_,_,_,_,_): return "/edit.php"
        case .UserTasks(_): return "/JSON.php"
        case .UpDateTime(_,_): return "edit.php"
            
        }
        
    }
    
    var method: Moya.Method {
        switch self {
        case .Tasks, .User, .Company, .Projects, .UserTasks:
            return .get
        case .AddUser, .AddTask, .AddProject, .EditUser, .UpDateTime:
            return .post
        }
    }
    
    var sampleData: Data {
        switch self {
        case .Tasks, .User, .Company, .Projects, .AddUser, .AddTask, .AddProject, .EditUser, .UserTasks, .UpDateTime:
            return Data()
        }
    }
    
    var task: Task {
        switch self {
        
        case .Tasks:
            return .requestParameters(parameters: ["Tasks":""], encoding: URLEncoding.queryString)
        
        case .Projects:
            return .requestParameters(parameters: ["Projects":""], encoding: URLEncoding.queryString)
        
        case .User:
            return .requestParameters(parameters: ["Users":""], encoding: URLEncoding.queryString)
       
        case .Company:
            return .requestParameters(parameters: ["Company":""], encoding: URLEncoding.queryString)
        
        case .UserTasks(let userID):
            return  .requestParameters(parameters: ["Tasks":"", "user_id": userID], encoding: URLEncoding.queryString)
            
        case .AddUser(let userID, let Name, let Email, let Password, let Phone, let Type,let companyID):
            return .requestParameters(parameters: ["Users":"","user_id":userID, "name": Name, "email": Email, "password": Password,"phone": Phone ,"type":Type, "company_id": companyID], encoding: URLEncoding.queryString)
            
        case .AddTask(let Name,let taskID, let userID, let Priority ,let Time, let Task, let TaskData, let UsedTime,let ProjectID):
            return .requestParameters(parameters: ["Tasks":"","user_id": userID, "name": Name, "task_id": taskID, "priority": Priority ,"task": Task ,"used_time":UsedTime, "project_id": ProjectID, "task_date": TaskData, "time": Time], encoding: URLEncoding.queryString)
            
        case .AddProject(let Name, let Client, let Platform, let API, let Time, let Info, let ExtraInfo, let ProjectID, let userMasterID, let ProjectData):
            return .requestParameters(parameters: ["Projects":"","user_master_id": userMasterID, "name": Name, "project_id": ProjectID, "project_date": ProjectData, "time": Time,"client": Client, "platform": Platform, "api": API, "info": Info, "extra_info": ExtraInfo], encoding: URLEncoding.queryString)
        
        case .EditUser(let userID, let Name, let Email, let Password, let Phone, let Type,let companyID):
            return .requestParameters(parameters: ["Users":"","user_id":userID, "name": Name, "email": Email, "password": Password,"phone": Phone ,"type":Type, "company_id": companyID], encoding: URLEncoding.queryString)
        case .UpDateTime(let Time, let taskID):
            return .requestParameters(parameters: ["Tasks":"","task_id":taskID, "used_time": Time], encoding: URLEncoding.queryString)
            
        }
    }
    
    var headers: [String : String]? {
        
        return ["Content-type": "application/json"]
        
    }
    
}

