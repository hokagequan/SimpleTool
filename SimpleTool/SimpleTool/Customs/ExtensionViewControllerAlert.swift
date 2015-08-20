//
//  ExtensionAlert.swift
//  SimpleTool
//
//  Created by Q on 15/8/20.
//  Copyright © 2015年 EADING. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(message: String?) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        let alertAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel) { (alertAction) -> Void in
        }
        alert.addAction(alertAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }
}
