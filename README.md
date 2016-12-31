Swift-Useful-Extensions
=======================

lots of categories i used in objc, rewrite in swift, more coming.

##Int Extension##
    isEven:Bool
    isOdd:Bool
    isPositive:Bool
    isNegative:Bool
    toDouble:Double
    toFloat:Float
    digits:Int

##Double Extension##
    roundTo(decimals:Int) -> Double

##String Extension##
    length:Int
    contains(_ string:String) -> Bool
    contains(_ string:String, withCompareOptions compareOptions: NSString.CompareOptions) -> Bool
    reverse() -> String

##UIView##
    width:CGFloat
    height:CGFloat
    size:CGSize

    origin:CGPoint
    x:CGFloat
    y:CGFloat
    centerX:CGFloat
    centerY:CGFloat

    left:CGFloat
    right:CGFloat
    top:CGFloat
    bottom:CGFloat

    roundCorner(radius:Float)

##NSDate##
    daysInBetween(_ date: NSDate) -> Double
    hoursInBetween(_ date: NSDate) -> Double
    minutesInBetween(_ date: NSDate) -> Double
    secondsInBetween(_ date: NSDate) -> Double

##UIImageView##
    roundImage()

##UIImage##
    croppedImage(bound : CGRect) -> UIImage
