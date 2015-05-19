//
//  aboutViewController.swift
//  oddEven
//
//  Created by Jonathan Chancey on 5/15/15.
//  Copyright (c) 2015 MinaretsITDept. All rights reserved.
//

import UIKit

class aboutViewController: UIViewController {

    @IBOutlet var languageSegmented: UISegmentedControl!
    
    @IBAction func indexChanged(sender: UISegmentedControl) {
        switch languageSegmented.selectedSegmentIndex
        {
        case 0:
            println("ayy1");
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject("english", forKey: "whatLanguage")
        case 1:
            println("ayy2");
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setObject("spanish", forKey: "whatLanguage")
        default:
            println("ayy3");
            break;
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.view.backgroundColor = UIColor.lightGrayColor()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
