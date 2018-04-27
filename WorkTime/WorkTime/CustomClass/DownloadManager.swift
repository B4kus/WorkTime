//
//  DownloadManager.swift
//  WorkTime
//
//  Created by Szymon Szysz on 27.04.2018.
//  Copyright © 2018 Szymon Szysz. All rights reserved.
//

import Foundation

class DownloadManager {
    
    var delegate: HavingWebView?
    var gotFirstAndEnough = true
    
    var lastRequestBeginning: NSDate?
    
    var myLinks = [String](){
        
        didSet{
            self.handledLink = self.myLinks.count
        }
    }
    
    var contentOfURL: String?
    
    
    var finalURL: NSURL?{
        didSet{
            if finalURL != nil {
                if let s = self.contentOfURL{
                    print(s)
                }
            }
        }
    }
    
    var handledLink = 0 {
        didSet{
            if handledLink == 0 {
                self.finalURL = nil
                print("🔴🔶🔴🔶🔶🔴🔶🔴🔶🔴🔶🔴")
            } else {
                if self.finalURL == nil {
                    if let nextURL = NSURL(string: self.myLinks[self.handledLink-1]) {
                        self.loadAsync(url: nextURL)
                    }
                }
            }
        }
    }
    
    func loadAsync(url: NSURL) {
        let sessionConfig = URLSessionConfiguration.ephemeral
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: OperationQueue.main)
        var request = URLRequest(url: url as URL, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 15.0)
        request.httpMethod = "GET"
        print("🚀")
        self.lastRequestBeginning = NSDate()
        print("Requet began:    \(String(describing: self.lastRequestBeginning ))")
        
        print(request)
        //let task = session.dataTask(with: request ){ (data: Data?, response:URLResponse?, error:Error?) -> Void in
        let task = session.dataTask(with: request) { (data: Data?, response:URLResponse?, error:Error?) in
            
            
            if (error == nil) {
                if let response = response as? HTTPURLResponse {
                    print("\(response)")
                    if response.statusCode == 200 {
                        
                    
    
                        
                        self.finalURL =  url
                        
                    }
                }
                else {
                    print("Failure: \(error!.localizedDescription)");
                }
                
                let elapsed = NSDate().timeIntervalSince(self.lastRequestBeginning! as Date)
                print("trying \(url) takes \(elapsed)")
                print("🏁   Request finished")
                print("____________________________________________")
                self.handledLink -= 1
                print(self.handledLink)
                
                
            }
            
            }.resume()
    }
}

