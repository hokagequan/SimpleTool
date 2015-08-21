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
            
            if NSFileManager.defaultManager().fileExistsAtPath(path!) == true {
                try NSFileManager.defaultManager().removeItemAtPath(path!)
            }
            
            let dictionary = NSMutableDictionary()
            let cityInfos = text.componentsSeparatedByString("\r\n")
            for cityInfo in cityInfos {
                let info = cityInfo.componentsSeparatedByString("=")
                let city = (info[1] as String).stringByAppendingString("市")
                let code = info[0]
                dictionary[city] = code
            }
            
            return dictionary.writeToFile(path!, atomically: true)
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