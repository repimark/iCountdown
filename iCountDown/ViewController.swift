//
//  ViewController.swift
//  iCountDown
//
//  Created by Márk Repits on 2015. 01. 28..
//  Copyright (c) 2015. Márk Repits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        drawRect(CGRectMake(10, 10, 50, 50))

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

