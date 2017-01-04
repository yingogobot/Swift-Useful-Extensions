//  ViewController.swift
//  Swift-Useful-Extensions

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var testView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////////////////////////////////////////////////////
        //                 UIView Extension               //
        ////////////////////////////////////////////////////

        self.testView.centerX = 250
        self.testView.y = 250
        self.testView.width = 100
        self.testView.height = 100
        self.testView.cornerRadius = 5
        
        
        ////////////////////////////////////////////////////
        //                  Int Extension                 //
        ////////////////////////////////////////////////////
        
        print("\nInt:")
        if(111.isEven)
        {
            print("111 isEven");
        }
        else if (111.isOdd)
        {
            print("111 isOdd");
        }
        print("123 to Float: \(123.toFloat)")
        print("How many digits are in -2147483647: \((-2147483647).digits)")
        print("How many digits are in 2147483647: \(2147483647.digits)")
        

        ////////////////////////////////////////////////////
        //                 String Extension               //
        ////////////////////////////////////////////////////
        
        print("\nString:")
        print("Reverse: \("Hello World".reverse())")
        print("'HEEEEEE' contains 'he': \("HEEEEEE".contains("he"))")
        print("'HEEEEEE' contains 'he' using caseInsensitive: \("HEEEEEE".contains("he", withCompareOptions: .caseInsensitive))")
        
        
        ////////////////////////////////////////////////////
        //                 NSDate Extension               //
        ////////////////////////////////////////////////////     
        
        print("\nNSDate:")
        let date = NSDate().addingTimeInterval(60 * 60 * 24)
        print("Hours in between now: \(date.hoursInBetween(NSDate()))")
        print("Minutes in between now: \(date.minutesInBetween(NSDate()))")
        let double = (date.minutesInBetween(NSDate()))

        
        ////////////////////////////////////////////////////
        //                 Double Extension               //
        ////////////////////////////////////////////////////

        print("\nDouble:")
        print(double.roundedTo(decimals: 2))
        print(5555.5555.roundedTo(decimals: 3))
        print(234.4444.roundedTo(decimals: 1))
        
        
        ////////////////////////////////////////////////////
        //              UIImageView Extension             //
        ////////////////////////////////////////////////////
        
        let imageView = UIImageView(image: UIImage(named: "avatar"))
        imageView.frame = CGRect(x:25, y:50, width:200, height:200)
        imageView.roundImage()
        self.view.addSubview(imageView)
        
        
        ////////////////////////////////////////////////////
        //                UIImage Extension               //
        ////////////////////////////////////////////////////
        
        let imageView2 = UIImageView(image: UIImage(named: "avatar"))
        imageView2.frame = CGRect(x:25, y:250, width:50, height:50)
        imageView.contentMode = .scaleAspectFill
        self.view.addSubview(imageView2)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

