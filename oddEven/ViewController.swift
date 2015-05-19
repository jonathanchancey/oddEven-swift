//
//  ViewController.swift
//  oddEven
//
//  Created by Jonathan Chancey on 4/27/15.
//  Copyright (c) 2015 MinaretsITDept. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate{
    
    @IBOutlet var itemLabel: UILabel!
    //To add a new school, first add it's name to this array
    var schools = ["Select","Minarets High School","West Ranch High School","Glendora","Yosemite High School","Roosevelt High School"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return schools.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return schools[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var itemSelected = schools[row]
        itemLabel.text = itemSelected
        
        println("itemSelectedOnNextLine")
        println(itemSelected)
        
        if (itemSelected == "Minarets High School"){
            println("isS//;/elected")
            var isOdd = 0
            var isEven = 0
            var isNot = 0
            var isOddArray = [150324,150326,150406,150408,150410,150414,150416,150420,150422,150424,150428,150430,150504,150506,150508,150512,150514,150518,150520,150522,150527,150529]
            var isEvenArray = [150323,150325,150327,150407,150409,150413,150415,150417,150421,150423,150427,150429,150501,150505,150507,150511,150513,150515,150519,150521,150526,150528]
            
            var dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyMMdd"
            let d = NSDate()
            let s = dateFormatter.stringFromDate(d)
            
            var cDate = s.toInt()
            if contains(isOddArray, cDate!) {
                isOdd = 1
            } else if contains(isEvenArray, cDate!) {
                isEven = 1
            } else {
                isNot = 1
            }
            
            println(isOdd)
            println(isEven)
            println(isNot)
            
            if (isOdd == 1){
                let oddView = self.storyboard?.instantiateViewControllerWithIdentifier("oddView") as oddViewController
                self.navigationController?.pushViewController(oddView, animated: true)
            } else if (isEven == 1){
                let evenView = self.storyboard?.instantiateViewControllerWithIdentifier("evenView") as evenViewController
                self.navigationController?.pushViewController(evenView, animated: true)
            } else {
                let notView = self.storyboard?.instantiateViewControllerWithIdentifier("notView") as notViewController
                self.navigationController?.pushViewController(notView, animated: true)
            }
        }
        //To create a new school start copy here.
        if (itemSelected == "Glendora"){
            println("isS//;/elected")
            var isOdd = 0
            var isEven = 0
            var isNot = 0
            var isOddArray = [140814,140818,140820,140822,140826,140828,140902,140904,140908,140910,140912,140916,140918,140922,140924,140926,140930,141002,141006,141008,141010,141015,141017,141021,141023,141027,141029,141031,141104,141106,141110,141113,141117,141119,141121,141202,141204,141208,141210,141212,150106,150108,150112,150114,150116,150121,150123,150127,150129,150202,150204,150206,150211,150213,150218,150220,150224,150226,150302,150304,150306,150310,150312,150316,150318,150320,150324,150326,150406,150408,150410,150414,150416,150420,150422,150424,150428,150430,150504,150406,150408,150412,150414,150418,150420]
            var isEvenArray = [150323,150325,150327,150407,150409,150413,150415,150417,150421,150423,150427,150429,150501,150505,150507,150511,150513,150515,150519,150521,150526,150528]
            
            var dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyMMdd"
            let d = NSDate()
            let s = dateFormatter.stringFromDate(d)
            
            var cDate = s.toInt()
            if contains(isOddArray, cDate!) {
                isOdd = 1
            } else if contains(isEvenArray, cDate!) {
                isEven = 1
            } else {
                isNot = 1
            }
            
            println(isOdd)
            println(isEven)
            println(isNot)
            
            if (isOdd == 1){
                let oddView = self.storyboard?.instantiateViewControllerWithIdentifier("oddView") as oddViewController
                self.navigationController?.pushViewController(oddView, animated: true)
            } else if (isEven == 1){
                let evenView = self.storyboard?.instantiateViewControllerWithIdentifier("evenView") as evenViewController
                self.navigationController?.pushViewController(evenView, animated: true)
            } else {
                let notView = self.storyboard?.instantiateViewControllerWithIdentifier("notView") as notViewController
                self.navigationController?.pushViewController(notView, animated: true)
            }
        }
        //To create a new school end copy here.
        if (itemSelected == "West Ranch High School"){
            println("isS//;/elected")
            var isOdd = 0
            var isEven = 0
            var isNot = 0
            var isOddArray = [150814,150818,150820,150824,150826,150828,150901,150903,150908,150910,150914,150916,150918,150922,150924,150928,150930,151002,151008,151012,151014,151016,151020,151022,151026,151028,151030,151103,151105,151109,151112,151116,151118,151120,151124,151130,151202,151204,151202,151204,151208,151210,151214,160112,160114,160119,160121,160125,160127,160129,160202,160204,160208,160210,160216,160218,160222,160224,160226,160301,160303,160307,160309,160311,160315,160317,160321,160323,160325,160329,160331,160411,160413,160415,160419,160421,160425,160427,160429,160503,160505,160509,160511,160513,160517,160519,160523,160525,160627]
            var isEvenArray = [150813,150817,150819,150821,150825,150827,150831,150902,150904,150909,150911,150915,150917,150921,150923,150925,150929,151001,151007,151009,151013,151015,151019,151021,151023,151027,151029,151102,151104,151106,151110,151113,151117,151119,151123,151125,151201,151203,151207,151209,151211,160111,160113,160115,160120,160122,160126,160128,160201,160203,160205,160209,160211,160217,160219,160223,160225,160229,160302,160304,160308,160310,160314,160316,160318,160322,160324,160328,160330,160401,160412,160414,160418,160420,160422,160426,160428,160502,160504,160506,160510,160512,160516,160518,160520,160524,160526
]
            
            var dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyMMdd"
            let d = NSDate()
            let s = dateFormatter.stringFromDate(d)
            
            var cDate = s.toInt()
            if contains(isOddArray, cDate!) {
                isOdd = 1
            } else if contains(isEvenArray, cDate!) {
                isEven = 1
            } else {
                isNot = 1
            }
            
            println(isOdd)
            println(isEven)
            println(isNot)
            
            if (isOdd == 1){
                let oddView = self.storyboard?.instantiateViewControllerWithIdentifier("oddView") as oddViewController
                self.navigationController?.pushViewController(oddView, animated: true)
            } else if (isEven == 1){
                let evenView = self.storyboard?.instantiateViewControllerWithIdentifier("evenView") as evenViewController
                self.navigationController?.pushViewController(evenView, animated: true)
            } else {
                let notView = self.storyboard?.instantiateViewControllerWithIdentifier("notView") as notViewController
                self.navigationController?.pushViewController(notView, animated: true)
            }
        }

        if (itemSelected == "Yosemite High School"){
            println("isS//;/elected")
            var isOdd = 0
            var isEven = 0
            var isNot = 0
            var isOddArray = [150821,150828,150904,150911,150918,150925,151002,151009,151016,151030,151106,151113,151120,151204,151211,151218,160104,160111,160108,160208,160215,160222,160229,160205,160212,160226,160304,160311,160318,160401,160408,160415,160422,160429,160506,160513,160520,160527,160603]
            var isEvenArray = [150820,150827,150903,150910,150917,150924,151001,151008,151015,151029,151105,151112,151119,151203,151210,151217,160103,160110,160107,160207,160214,160221,160228,160204,160211,160225,160303,160310,160317,160331,160407,160414,160421,160428,160505,160512,160519,160526,160602]
            
            var dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyMMdd"
            let d = NSDate()
            let s = dateFormatter.stringFromDate(d)
            
            var cDate = s.toInt()
            if contains(isOddArray, cDate!) {
                isOdd = 1
            } else if contains(isEvenArray, cDate!) {
                isEven = 1
            } else {
                isNot = 1
            }
            
            println(isOdd)
            println(isEven)
            println(isNot)
            
            if (isOdd == 1){
                let oddView = self.storyboard?.instantiateViewControllerWithIdentifier("oddView") as oddViewController
                self.navigationController?.pushViewController(oddView, animated: true)
            } else if (isEven == 1){
                let evenView = self.storyboard?.instantiateViewControllerWithIdentifier("evenView") as evenViewController
                self.navigationController?.pushViewController(evenView, animated: true)
            } else {
                let notView = self.storyboard?.instantiateViewControllerWithIdentifier("notView") as notViewController
                self.navigationController?.pushViewController(notView, animated: true)
            }
        }
        if (itemSelected == "Roosevelt High School"){
            println("isS//;/elected")
            var isOdd = 0
            var isEven = 0
            var isNot = 0
            var isOddArray = [150819,150821,150826,150828,150902,150904,150909,150911,150916,150918,150923,150925,150929,151002,151007,151009,151014,151016,151021,151023,151028,151030,151104,151106,151111,151113,151118,151120,151125,151127,151112,151204,151209,151211,151216,151218,151223,151225,151230,160101,160106,160108,160113,160115,160120,160122,160127,160129,160203,160205,160210,160212,160217,160219,160224,160226,160303,160305,160310,160312,160317,160319,160324,160326,160331,160402,160407,160409,160414,160416,160421,160423,160428,160430,160505,160507,160512,160514,160519,160521,160526,160528,160602,160604,160609,160611]
            var isEvenArray = [150820,150822,150827,150829,150903,150905,150910,150912,150917,150919,150924,150926,151001,151003,151008,151010,151015,151017,151022,151024,151029,151031,151105,151107,151112,151114,151119,151121,151126,151128,151203,151205,151210,151212,151217,151219,151224,151226,151231,160102,160107,160109,160114,160116,160121,160123,160128,160130,160204,160206,160211,160213,160218,160220,160225,160227,160304,160306,160311,160313,160318,160320,160325,160327,160401,160403,160408,160410,160415,160417,160422,160424,160429,160501,160506,160508,160513,160515,160520,160522,160527,160529,160603,160605,160603]
            
            var dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "yyMMdd"
            let d = NSDate()
            let s = dateFormatter.stringFromDate(d)
            
            var cDate = s.toInt()
            if contains(isOddArray, cDate!) {
                isOdd = 1
            } else if contains(isEvenArray, cDate!) {
                isEven = 1
            } else {
                isNot = 1
            }
            
            println(isOdd)
            println(isEven)
            println(isNot)
            
            if (isOdd == 1){
                let oddView = self.storyboard?.instantiateViewControllerWithIdentifier("oddView") as oddViewController
                self.navigationController?.pushViewController(oddView, animated: true)
            } else if (isEven == 1){
                let evenView = self.storyboard?.instantiateViewControllerWithIdentifier("evenView") as evenViewController
                self.navigationController?.pushViewController(evenView, animated: true)
            } else {
                let notView = self.storyboard?.instantiateViewControllerWithIdentifier("notView") as notViewController
                self.navigationController?.pushViewController(notView, animated: true)
            }
        }
    }
}
