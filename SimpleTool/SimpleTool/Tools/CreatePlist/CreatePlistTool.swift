//
//  CreatePlistTool.swift
//  SimpleTool
//
//  Created by Q on 15/8/20.
//  Copyright (c) 2015年 EADING. All rights reserved.
//

import Foundation

class CreatePlistTool {
    class func creatPlist(path: String?) -> Bool {
        guard (path != nil) else {
            return false
        }
        
        do {
            let text = try self.readTxtFile()
            
            print(text)
            
            return true
        }
        catch {
            return false
        }
    }
    
    // MARK: Private
    class private func readTxtFile() throws -> String {
        let path = NSBundle.mainBundle().pathForResource("cityid", ofType: "txt")
        do {
            let text = try String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
            
            return text
        }
        catch let error {
            throw error
        }
    }
}