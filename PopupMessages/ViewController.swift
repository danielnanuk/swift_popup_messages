//
//  ViewController.swift
//  PopupMessages
//
//  Created by 周梦 on 8/7/15.
//  Copyright (c) 2015 野狗部落. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var helloButton : UIButton = UIButton(frame:CGRect(x: 0, y: 0, width: 250, height: 60))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        helloButton.setTitle("Say Hello", forState: .Normal)
        helloButton.backgroundColor = UIColor.greenColor()
        helloButton.addTarget(self, action: "showAlertController", forControlEvents: UIControlEvents.TouchUpInside)
        helloButton.center = CGPointMake(160, 300)
        view.addSubview(helloButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func showMessage(){
        var messageTitle : String = "Hello World"
        var messageString : String  = "Thanks for visiting"
        var alert : UIAlertView = UIAlertView()
        alert.title = messageTitle
        alert.message = messageString
        alert.addButtonWithTitle("OK")
        alert.show()
    }

    func showAlertController () {
        let title = "Hello World"
        let message = NSLocalizedString("Are you feeling well?", comment:"")
        let cancelButtonTitle = NSLocalizedString("No", comment:"")
        let otherButtonTitle = NSLocalizedString("Yes", comment:"")
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Cancel, handler: { action in
            NSLog("User not feeling good today")
            
        })
        
        let otherAction = UIAlertAction(title: otherButtonTitle, style: .Default, handler: { action in
            NSLog("User feeling good today")
            
        })
        
        alertController.addAction(cancelAction)
        alertController.addAction(otherAction)
        presentViewController(alertController, animated: true, completion: nil)
        
    }

}

