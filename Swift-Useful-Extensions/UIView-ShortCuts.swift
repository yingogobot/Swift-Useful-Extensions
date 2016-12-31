//
//  UIView-ShortCuts.swift
//  Swift-Useful-Extensions
//
//  Created by Yin Xu on 6/9/14.
//  Copyright (c) 2014 YinXuApp. All rights reserved.
//
import CoreFoundation
import Foundation
import UIKit

extension Int{
    var isEven:Bool     {return (self % 2 == 0)}
    var isOdd:Bool      {return (self % 2 != 0)}
    var isPositive:Bool {return (self >= 0)}
    var isNegative:Bool {return (self < 0)}
    var toDouble:Double {return Double(self)}
    var toFloat:Float   {return Float(self)}
    
    var digits:Int {//this only works in bound of LONG_MAX 2147483647, the maximum value of int
        if(self == 0)
        {
            return 1
        }
        else if(Int(fabs(Double(self))) <= LONG_MAX)
        {
            return Int(log10(fabs(Double(self)))) + 1
        }
        else
        {
            return -1; //out of bound
        }
    }
}



extension Double{
    func roundedTo(decimals:Int) -> Double
    {
        let format = NumberFormatter()
        format.numberStyle = NumberFormatter.Style.decimal
        format.multiplier = 1
        format.roundingMode = .up
        format.maximumFractionDigits = decimals
        format.number(from: format.string(for: self )! )
        
        return (format.number(from: format.string(for: self )! )) as! Double
    }
}








extension String{
    
    var length:Int {return self.length}

    func contains(_ string:String) -> Bool
    {
        if(self.range(of:string) != nil)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func contains(_ string:String, withCompareOptions compareOptions: NSString.CompareOptions) -> Bool
    {
        if((self.range(of:string, options: compareOptions)) != nil)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    func reverse() -> String
    {
        var reverseString : String = ""
        
        for c in self.characters //.indices
        {
            reverseString = String(c) + reverseString
        }
        return reverseString
    }
}

//UIView
extension UIView{
    
    var width:CGFloat {
        get{
            return self.frame.size.width
        }
        set{
            self.frame.size.width = newValue
        }
    }
    
    var height:CGFloat {
        get{
            return self.frame.size.height
        }
        set{
            self.frame.size.height = newValue
        }
    }
    
    var size:CGSize  {
        get{
            return self.frame.size
        }
        set{
            self.frame.size = newValue
        }
    }
    
    var origin:CGPoint {
        get{
            return self.frame.origin
        }
        set{
            self.frame.origin = newValue
        }
    }
    
    var x:CGFloat {
        get{
            return self.frame.origin.x
        }
        set{
            self.frame.origin = CGPoint(x:newValue, y:self.frame.origin.y)
        }
    }
    
    var y:CGFloat {
        get{
            return self.frame.origin.y
        }
        set{
            self.frame.origin = CGPoint(x:self.frame.origin.x, y:newValue)
        }
    }
    
    var centerX:CGFloat {
        get{
            return self.center.x
        }
        set{
            self.center = CGPoint(x:newValue, y:self.center.y)
        }
    }
    
    var centerY:CGFloat {
        get{
            return self.center.y
        }
        set{
            self.center = CGPoint(x:self.center.x, y:newValue)
        }
    }
    
    var left:CGFloat {
        get{
            return self.frame.origin.x
        }
        set{
            self.frame.origin.x = newValue
        }
    }
        
    var right:CGFloat {
        get{
            return self.frame.origin.x + self.frame.size.width
        }
        set{
            self.frame.origin.x = newValue - self.frame.size.width
        }
    }
    var top:CGFloat {
        get{
            return self.frame.origin.y
        }
        set{
            self.frame.origin.y = newValue
        }
    }
    var bottom:CGFloat {
        get{
            return self.frame.origin.y + self.frame.size.height
        }
        set{
            self.frame.origin.y = newValue - self.frame.size.height
        }
    }
    
    var cornerRadius:CGFloat{
        get{
            return self.layer.cornerRadius
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }

}

extension NSDate{
    func daysInBetweenDate(date: NSDate) -> Double
    {
        var diff = self.timeIntervalSinceNow - date.timeIntervalSinceNow
        diff = fabs(diff/86400)
        return diff
    }
    
    func hoursInBetweenDate(date: NSDate) -> Double
    {
        var diff = self.timeIntervalSinceNow - date.timeIntervalSinceNow
        diff = fabs(diff/3600)
        return diff
    }
    
    func minutesInBetweenDate(date: NSDate) -> Double
    {
        var diff = self.timeIntervalSinceNow - date.timeIntervalSinceNow
        diff = fabs(diff/60)
        return diff
    }
    
    func secondsInBetweenDate(date: NSDate) -> Double
    {
        var diff = self.timeIntervalSinceNow - date.timeIntervalSinceNow
        diff = fabs(diff)
        return diff
    }
}

extension UIImageView{
    func roundImage()
    {
        //height and width should be the same
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2;
    }
}

extension UIImage{
    func croppedImage(bound : CGRect) -> UIImage
    {
        let scaledBounds : CGRect = CGRect(x:bound.origin.x * self.scale, y:bound.origin.y * self.scale, width:bound.size.width * self.scale, height:bound.size.height * self.scale)
        let imageRef = cgImage?.cropping(to:scaledBounds)
        let croppedImage : UIImage = UIImage(cgImage: imageRef!, scale: self.scale, orientation: UIImageOrientation.up)
        return croppedImage;
    }
}


