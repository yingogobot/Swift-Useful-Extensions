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
    roundToDecimalDigits(decimals:Int) -> Double
    
##String Extension##
    length:Int
    containsString(s:String) -> Bool
    containsString(s:String, compareOption: NSStringCompareOptions) -> Bool
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
    
    setX(x:CGFloat)
    setY(y:CGFloat) 
    setCenterX(x:CGFloat)
    setCenterY(y:CGFloat)
    roundCorner(radius:Float)

##NSDate##
    daysInBetweenDate(date: NSDate) -> Double
    hoursInBetweenDate(date: NSDate) -> Double
    minutesInBetweenDate(date: NSDate) -> Double
    secondsInBetweenDate(date: NSDate) -> Double
    
##UIImageView##
    roundImage()
    
##UIImage##
    croppedImage(bound : CGRect) -> UIImage
    
