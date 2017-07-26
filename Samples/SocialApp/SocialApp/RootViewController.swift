//
//  ViewController.swift
//  SocialApp
//
//  Created by Joel Levin on 4/15/17.
//  Copyright © 2017 joeldev. All rights reserved.
//

import UIKit
import JLRoutes


class RootViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        title = "Social App"
        
        weak var weakSelf = self
        
        let userHandler = JLRRouteHandler.handlerBlock(forTargetClass: UserProfileViewController.self) { (createdObj: JLRRouteHandlerTarget) -> Bool in
            let vc = createdObj as! UserProfileViewController
            weakSelf?.navigationController?.pushViewController(vc, animated: true)
            return true
        }
        
        JLRoutes.global().addRoute("/user/:username", handler: userHandler)
        
        JLRoutes.global().addRoute("/logout") { (parameters) -> Bool in
            return true
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

