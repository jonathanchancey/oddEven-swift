//
//  evenViewController.swift
//  oddEven
//
//  Created by Jonathan Chancey on 4/28/15.
//  Copyright (c) 2015 MinaretsITDept. All rights reserved.
//

import UIKit
class evenViewController: UIViewController {
    
    @IBOutlet var evenLabel: UILabel!
    
private var foregroundNotification:
    NSObjectProtocol!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        println("viewdidload")
        
        let defaults = NSUserDefaults.standardUserDefaults()
        let name = defaults.stringForKey("whatLanguage")
        println(name)
        if (name == "english"){
            self.evenLabel.text = "Today is an even day."
        } else if (name == "spanish"){
            self.evenLabel.text = "Hoy es un día pares."
        }
        
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(.CalendarUnitDay, fromDate: date)
        let day = components.day
        var dateLoaded = day
        
        foregroundNotification = NSNotificationCenter.defaultCenter().addObserverForName(UIApplicationWillEnterForegroundNotification, object: nil, queue: NSOperationQueue.mainQueue()) {
            [unowned self] notification in
            // forground activities
            println("notifi")
            
            let date = NSDate()
            let calendar = NSCalendar.currentCalendar()
            let components = calendar.components(.CalendarUnitDay, fromDate: date)
            let day = components.day
            
            if (dateLoaded == day){
                let great = "we aren't changing"
                println("yes")
            } else{
                println("success")
                let mainView = self.storyboard?.instantiateViewControllerWithIdentifier("mainView") as ViewController
                self.navigationController?.pushViewController(mainView, animated: true)
            }
        }
}
    
    deinit {
        // make sure to remove the observer when this view controller is dismissed/deallocated
        
        NSNotificationCenter.defaultCenter().removeObserver(foregroundNotification)
    }
        // Do any additional setup after loading the view.
}


    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


