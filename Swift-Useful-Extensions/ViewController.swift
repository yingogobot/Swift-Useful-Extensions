//
//  ViewController.swift
//  Swift-Useful-Extensions
//
//  Created by Yin Xu on 6/9/14.
//  Copyright (c) 2014 YinXuApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var testView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////////////////////////////////////////////////////
        //                 UIView Extension               //
        ////////////////////////////////////////////////////

        self.testView.centerX = 250
        self.testView.y = 50
        self.testView.cornerRadius = 5
        
        
        ////////////////////////////////////////////////////
        //                  Int Extension                 //
        ////////////////////////////////////////////////////
        
        if(111.isEven)
        {
            print("111 isEven");
        }
        else if (111.isOdd)
        {
            print("111 isOdd");
        }
        
        print(123.toFloat)
        print("how many digits are in -2147483647 \((-2147483647).digits)")
        print("how many digits are in -2147483647 \(2147483647.digits)")
        

        ////////////////////////////////////////////////////
        //                 String Extension               //
        ////////////////////////////////////////////////////
        
        print("HEEEEEE".contains("he"))
        print("HEEEEEE".contains("he", withCompareOptions: .caseInsensitive))
        
        ////////////////////////////////////////////////////
        //                 NSDate Extension               //
        ////////////////////////////////////////////////////     
        
        let date : NSDate = NSDate().addingTimeInterval(60 * 60 * 24)
        print(date.hoursInBetweenDate(date: NSDate()))
        print(date.minutesInBetweenDate(date: NSDate()))
        let double = (date.minutesInBetweenDate(date: NSDate()))
        
        ////////////////////////////////////////////////////
        //                 Double Extension               //
        ////////////////////////////////////////////////////

        let rounded:Double = double.roundToDecimalDigits(decimals: 1)
        print(rounded)
        print(("234.4444" as NSString).doubleValue)
        
        
        ////////////////////////////////////////////////////
        //              UIImageView Extension             //
        ////////////////////////////////////////////////////
        
        let imageView : UIImageView = UIImageView(image: UIImage(named: "avatar.jpg"))
        imageView.frame = CGRect(x:25, y:50, width:200, height:200)
        imageView.roundImage()
        self.view.addSubview(imageView)
        
        ////////////////////////////////////////////////////
        //                UIImage Extension               //
        ////////////////////////////////////////////////////
        
        
        let image = UIImage(named: "avatar.jpg")?.croppedImage(bound:CGRect(x:0, y:0, width:200, height:200))
        let imageView2 : UIImageView = UIImageView(image: image)
        imageView2.frame = CGRect(x:25, y:250, width:50, height:50)
        self.view.addSubview(imageView2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

