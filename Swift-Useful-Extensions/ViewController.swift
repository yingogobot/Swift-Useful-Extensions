//
//  ViewController.swift
//  Swift-Useful-Extensions
//
//  Created by Yin Xu on 6/9/14.
//  Copyright (c) 2014 YinXuApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var testView : UIView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////////////////////////////////////////////////////
        //                 UIView Extension               //
        ////////////////////////////////////////////////////

        self.testView.setCenterX(250);
        self.testView.setY(50);
        self.testView.roundCorner(5)
        
        
        ////////////////////////////////////////////////////
        //                  Int Extension                 //
        ////////////////////////////////////////////////////
        
        if(111.isEven)
        {
            println("111 isEven");
        }
        else if (111.isOdd)
        {
            println("111 isOdd");
        }
        
        println(123.toFloat)
        println("how many digits is in -2147483647 \((-2147483647).digits)")
        println("how many digits is in -2147483647 \(2147483647.digits)")
        

        ////////////////////////////////////////////////////
        //                 String Extension               //
        ////////////////////////////////////////////////////
        
        println("HEEEEEE".containsString("he"))
        println("HEEEEEE".containsString("he", compareOption: NSStringCompareOptions.CaseInsensitiveSearch))
        
        ////////////////////////////////////////////////////
        //                 NSDate Extension               //
        ////////////////////////////////////////////////////     
        
        var date : NSDate = NSDate.date().dateByAddingTimeInterval(60 * 60 * 24)
        println(date.hoursInBetweenDate(NSDate.date()))
        println(date.minutesInBetweenDate(NSDate.date()))
        var double = (date.minutesInBetweenDate(NSDate.date()))
        
        ////////////////////////////////////////////////////
        //                 Double Extension               //
        ////////////////////////////////////////////////////

        var rounded:Double = double.roundToDecimalDigits(2)
        println(rounded)
        println("234.4444".bridgeToObjectiveC().doubleValue)
        
        
        ////////////////////////////////////////////////////
        //              UIImageView Extension             //
        ////////////////////////////////////////////////////
        
        var imageView : UIImageView = UIImageView(image: UIImage(named: "avatar.jpg"))
        imageView.frame = CGRectMake(25, 50, 200, 200)
        imageView.roundImage()
        self.view.addSubview(imageView)
        
        ////////////////////////////////////////////////////
        //                UIImage Extension               //
        ////////////////////////////////////////////////////
        
        var image = UIImage(named: "avatar.jpg").croppedImage(CGRectMake(0, 0, 200, 200))
        var imageView2 : UIImageView = UIImageView(image: image)
        imageView2.frame = CGRectMake(25, 250, 50, 50)
        self.view.addSubview(imageView2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

