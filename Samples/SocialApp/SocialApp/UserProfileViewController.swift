//
//  UserProfileViewController.swift
//  SocialApp
//
//  Created by Joel Levin on 4/15/17.
//  Copyright © 2017 joeldev. All rights reserved.
//

import UIKit
import JLRoutes


class UserProfileViewController: UIViewController, JLRRouteHandlerTarget {
    
    required init(routeParameters parameters: [String : Any]) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
