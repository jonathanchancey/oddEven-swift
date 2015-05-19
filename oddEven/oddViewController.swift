//
//  oddViewController.swift
//  oddEven
//
//  Created by Jonathan Chancey on 4/28/15.
//  Copyright (c) 2015 MinaretsITDept. All rights reserved.
//

import UIKit

class oddViewController: UIViewController {
    
    
    
    @IBOutlet var oddLabel: UILabel!
    private var foregroundNotification: NSObjectProtocol!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLoad() {
        let defaults = NSUserDefaults.standardUserDefaults()
        let name = defaults.stringForKey("whatLanguage")
            println(name)
            if (name == "english"){
            self.oddLabel.text = "Today is an odd day."
        } else if (name == "spanish"){
            self.oddLabel.text = "Hoy es un día impares."
        }
        
        
        super.viewDidLoad()
        println("viewdidload")
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
    

    
     //MARK: - Navigation

     //In a storyboard-based application, you will often want to do a little preparation before navigation
    //override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
         //Get the new view controller using segue.destinationViewController.
         //Pass the selected object to the new view controller.
    //}

}
