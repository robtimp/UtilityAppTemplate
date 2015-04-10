//
//  FlipsideViewController.swift
//  UtilityAppTemplate
//
//  Created by Rob Hudson on 4/10/15.
//  Copyright (c) 2015 Rob Hudson. All rights reserved.
//

import UIKit

protocol FlipsideViewControllerDelegate {
    func flipsideViewControllerDidFinish(controller: FlipsideViewController)
}

class FlipsideViewController: UIViewController, UINavigationBarDelegate {

    var delegate: FlipsideViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func done(sender: AnyObject) {
        self.delegate?.flipsideViewControllerDidFinish(self)
    }

    func positionForBar(bar: UIBarPositioning) -> UIBarPosition {
        return UIBarPosition.TopAttached
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
}