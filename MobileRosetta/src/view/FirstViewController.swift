//
//  FirstViewController.swift
//  MobileRosetta
//
//  Created by objex on 1/24/18.
//  Copyright © 2018 mobilerosetta.org. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        JsonExample()
        RxObserverExample() // instantiate to trigger build warnings
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

