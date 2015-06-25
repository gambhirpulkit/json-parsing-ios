//
//  TestData.swift
//  jsonParseArre
//
//  Created by Dignitas Digital on 6/23/15.
//  Copyright (c) 2015 Dignitas Digital. All rights reserved.
//

import Foundation

class TestData {
    
    var title : String?
    
    var url : String?
    
    var movie : String?
    
    var name : String?
    
    init(data : NSDictionary){
        
        self.name = getStringFromJSON(data, key:  "name")
        
        self.title = getStringFromJSON(data, key:  "post_content")
        
        self.movie = getStringFromJSON(data, key: "post_title")
        
        
        self.url = getStringFromJSON(data,key: "term_id")
        
    }
    func getStringFromJSON(data: NSDictionary, key: String) -> String{
        
        
        
        let info : AnyObject? = data[key]
        
        if let info = data[key] as? String {
          //  println(key)
      // println(info)
            
            return info
        }
        return ""
    }
    
}