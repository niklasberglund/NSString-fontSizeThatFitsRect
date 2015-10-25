# NSString-fontSizeThatFitsRect
A NSString category for getting the maximum font size a NSString can have and still fit within a rect. Useful when you want to maximize the font size and stay within the bounds of a UI element.

![Screenshot from example project](https://raw.githubusercontent.com/niklasberglund/NSString-fontSizeThatFitsRect/master/Example%20project%20screenshot.png "Screenshot")

# Install
Add the files under `Source` to your project and do `#import "NSString+fontSizeThatFitsRect.h"` where you want to use this category.

# Usage
The method definition is:
`- (CGFloat)fontSizeThatFitsRect:(CGRect)rect fontName:(NSString *)fontName`

So call `fontSizeThatFitsRect:fontName:` on your NSString object and use the returned CGFloat as font size. For example:
```objectivec
NSString *fontName = @"Helvetica";
NSString *myString = @"Text here";
CGFloat fontSize = [myString fontSizeThatFitsRect:myContainerView.frame fontName:fontName];
UIFont *myFont = [UIFont fontWithName:fontName size:fontSize];
```
