//
//  ViewController.swift
//  UtilityAppTemplate
//
//  Created by Rob Hudson on 4/10/15.
//  Copyright (c) 2015 Rob Hudson. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, FlipsideViewControllerDelegate {
    
    var flipsidePopoverController: UIPopoverController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func flipsideViewControllerDidFinish(controller: FlipsideViewController) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAlternate" {
            if let controller = segue.destinationViewController as? FlipsideViewController {
                controller.delegate = self
            }
        }
    }
}

