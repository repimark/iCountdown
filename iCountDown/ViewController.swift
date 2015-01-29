//
//  ViewController.swift
//  iCountDown
//
//  Created by Márk Repits on 2015. 01. 28..
//  Copyright (c) 2015. Márk Repits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var timeLabel:UILabel!
    var currentDate = NSDate()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       var savedDate = NSDate()
        let comps = NSDateComponents()
        comps.day = 15
        comps.month = 2
        comps.year = 2015
        savedDate = NSCalendar.currentCalendar().dateFromComponents(comps)!
        
        let distanceBetweenDates = currentDate.timeIntervalSinceDate(savedDate)
        let secondsInAnMinute = 60.0;
        let minutesElapsed = distanceBetweenDates / secondsInAnMinute;
        println(minutesElapsed)
        println(distanceBetweenDates)
        self.timeLabel.text = "\(distanceBetweenDates)"
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func drawRect(rect: CGRect) {
        var ctx = UIGraphicsGetCurrentContext()
        var progress: CGFloat = 0.7
        var innerRadiusRatio: CGFloat = 0.5
        var center = CGPointMake(CGRectGetMidX(rect), CGRectGetMidY(rect))
        var path: CGMutablePathRef = CGPathCreateMutable()
        var startAngle: CGFloat = CGFloat(-M_PI_2)
        var endAngle: CGFloat = CGFloat(-M_PI_2) + min(1.0, progress) * CGFloat(M_PI) * 2
        var outerRadius: CGFloat = CGRectGetWidth(rect) * 0.5 - 1.0
        var innerRadius: CGFloat = outerRadius * innerRadiusRatio
    }
    
}

