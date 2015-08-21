//
//  ViewController.swift
//  SimpleTool
//
//  Created by Q on 15/8/20.
//  Copyright © 2015年 EADING. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func clickCreatePlist(sender: AnyObject) {
        let paths = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.AllDomainsMask, true)
        var path = paths.first as String?
        path = path?.stringByAppendingString("/cityID.plist")
        print("\(path)")
        let result = CreatePlistTool.creatPlist(path)
        if result == true {
            self.showAlert("完成")
        }
        else {
            self.showAlert("失败")
        }
    }
}

