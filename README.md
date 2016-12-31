Swift-Useful-Extensions
=======================
Version 3.0.0

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
    contains(_ string:String) -> Bool
    contains(_ string:String, withCompareOptions compareOptions: NSString.CompareOptions) -> Bool
    reverse() -> String

##UIView##
    var width: CGFloat { get set }
    var height: CGFloat { get set }
    var size: CGFloat { get set }

    var origin:CGPoint { get set }
    var x:CGFloat { get set }
    var y:CGFloat { get set }
    var centerX:CGFloat { get set }
    var centerY:CGFloat { get set }


    var left:CGFloat { get set }
    var right:CGFloat { get set }
    var top:CGFloat { get set }
    var bottom:CGFloat { get set }

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
