//
//  API.swift
//  WorkTime
//
//  Created by Szymon Szysz on 11.05.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import Foundation
import Moya
import PromiseKit
//plugins: [NetworkLoggerPlugin(verbose: true)]
class API {
    let handler = MoyaProvider<URLService>()
    
    func getData(link: URLService, complitionBlock: @escaping (Data) -> Void ) {
    
            handler.request(link) { (result) in
                switch result {
                case .success(let response):
                  complitionBlock(response.data)
                case .failure(_):
                    print("error")
                    
                }
            }
        }
    
    
//    func getDataNew(link: URLService) -> Promise<Data> {
//
//        return Promise<Data> {
//            fullfil, reject -> Void in
//            return handler.request(link) { (result) in
//                switch result {
//                case .success(let response):
//                    fullfil(response.data)
//                case .failure(_):
//                    print("error")
//
//                }
//            }
//        }
//    } 
}
