//
//  UIView+AutoSize.m
//  AutoADemo
//
//  Created by Dorigin on 15/11/20.
//  Copyright © 2015年 Dorigin. All rights reserved.
//

#import "UIView+AutoSize.h"

#define TAG_ACTIVITY		31415926            // 加载进度view的TAG

#define SIX_TO_FIVE_X 1.171875f
#define SIX_TO_FIVE_Y 1.17429577f

#define PLUS_TO_SIX_X 1.104f
#define PLUS_TO_SIX_Y 1.10344828f

@implementation UIView (AutoSize)


#pragma mark - Category
/*
 frame.origin.y = top
 */
- (CGFloat)top
{
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)aTop
{
    return DFloat(self.frame.origin.y, NO);
}

- (void)setATop:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = AFloat(y, NO);
    self.frame = frame;
}

/*
 frame.origin.x = right
 */
- (CGFloat)right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)aRight
{
    CGRect frame = self.frame;
    return DFloat(frame.origin.x + frame.size.width,YES);
}

- (void)setARight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = AFloat(right, YES) - frame.size.width;
    self.frame = frame;
}

/*
 frame.origin.y = bottom
 */
- (CGFloat)bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)aBottom
{
    return DFloat(self.frame.origin.y + self.frame.size.height, NO);
}

- (void)setABottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = AFloat(bottom, NO) - frame.size.height;
    self.frame = frame;
}

/*
 frame.origin.x = left
 */
- (CGFloat)left
{
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)aLeft
{
    return DFloat(self.frame.origin.x, YES);
}

- (void)setALeft:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = AFloat(x, YES);
    self.frame = frame;
}

/*
 frame.size.width = width
 */
- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)aWidth
{
    return DFloat(self.frame.size.width, YES);
}

- (void)setAWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = AFloat(width, YES);
    self.frame = frame;
}

/*
 frame.size.height = height
 */
- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)aHeight
{
    return DFloat(self.frame.size.height, NO);
}

- (void)setAHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = AFloat(height, NO);
    self.frame = frame;
}

/*
 center.x = centerX
 */
- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX
{
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)aCenterX
{
    return DFloat(self.center.x,YES);
}

- (void)setACenterX:(CGFloat)centerX
{
    self.center = CGPointMake(AFloat(centerX,YES), self.center.y);
}

/*
 center.y = centerY
 */
- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY
{
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)aCenterY
{
    return DFloat(self.center.y,NO);
}

- (void)setACenterY:(CGFloat)centerY
{
    self.center = CGPointMake(self.center.x, AFloat(centerY, NO));
}

/**
 frame.origin
 */
- (CGPoint)origin
{
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGPoint)aOrigin
{
    return CGPointMake(DFloat(self.frame.origin.x, YES), DFloat(self.frame.origin.y, NO));
}

- (void)setAOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = CGPointMake(AFloat(origin.x, YES), AFloat(origin.y, NO));
    self.frame = frame;
}

/**
 frame.size
 */

- (CGSize)size
{
    return self.frame.size;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = CGSizeMake(size.width, size.height);
    self.frame = frame;
}

- (CGSize)aSize
{
    return CGSizeMake(DFloat(self.frame.size.width, YES), DFloat(self.frame.size.height, NO));
}

- (void)setASize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = CGSizeMake(AFloat(size.width, YES), AFloat(size.height, NO));;
    self.frame = frame;
}

/**
 frame
 */
- (CGRect)aFrame
{
    return CGRectMake(DFloat(self.frame.origin.x, YES), DFloat(self.frame.origin.y, NO),DFloat(self.frame.size.width, YES) ,DFloat(self.frame.size.height, NO));
}

- (void)setAFrame:(CGRect)rect
{
    self.frame = CGRectMake(AFloat(rect.origin.x, YES), AFloat(rect.origin.y, NO),AFloat(rect.size.width, YES) ,AFloat(rect.size.height, NO));
}

/**
 center
 */
- (CGPoint)aCenter
{
    return CGPointMake(DFloat(self.center.x, YES), DFloat(self.center.y, NO));
}

- (void)setACenter:(CGPoint)center
{
    self.center = CGPointMake(AFloat(center.x, YES), AFloat(center.y, NO));
}

/*
 toRight = self.superview.width - right - frame.size.width
 */
- (CGFloat)toRight
{
    return self.superview.frame.size.width - self.frame.origin.x - self.frame.size.width;
}

- (void)setToRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = self.superview.frame.size.width - right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)aToRight
{
    return DFloat(self.superview.frame.size.width - self.frame.origin.x - self.frame.size.width, YES);
}

- (void)setAToRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = self.superview.frame.size.width - frame.size.width - AFloat(right,YES);
    self.frame = frame;
}

/*
 toBottom = self.superview.height - bottom - frame.size.height
 */
- (CGFloat)toBottom
{
    return self.superview.frame.size.height - self.frame.origin.y - self.frame.size.height;
}

- (void)setToBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = self.superview.frame.size.height - bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)aToBottom
{
    CGRect frame = self.frame;
    return DFloat(self.superview.frame.size.height - frame.size.height - frame.origin.y, NO);
}

- (void)setAToBottom:(CGFloat)bottom
{
    CGRect frame = self.frame;
    frame.origin.y = self.superview.frame.size.height - frame.size.height - AFloat(bottom, NO);
    self.frame = frame;
}


#pragma mark- Auto Mix

DeviceSize CurrentDevice()
{
    return (SceenWidth <321.f&& SceenHeight< 481.f)?Inch3_5:(SceenWidth <321.f&& SceenHeight> 481.f)?Inch4:fabs((CGFloat)SceenWidth - 375.f)<2.f?Inch4_7:Inch5_5;
}

CGFloat AFloat(CGFloat X,bool isWidth)
{
    switch (CurrentDevice())
    {
        case Inch4:
            return X/(isWidth?SIX_TO_FIVE_X:SIX_TO_FIVE_Y);
            break;
        case Inch5_5:
            return X*(isWidth?PLUS_TO_SIX_X:PLUS_TO_SIX_Y);
            break;
        default:
            return X;
            break;
    }
}

CGFloat DFloat(CGFloat X,bool isWidth)
{
    switch (CurrentDevice())
    {
        case Inch4:
            return X*(isWidth?SIX_TO_FIVE_X:SIX_TO_FIVE_Y);
            break;
        case Inch5_5:
            return X/(isWidth?PLUS_TO_SIX_X:PLUS_TO_SIX_Y);
            break;
        default:
            return X;
            break;
    }
}

#pragma mark- Rect GET

CGFloat RectMinX(CGRect rect)
{
    return DFloat(CGRectGetMinX(rect),YES);
}

CGFloat RectMinY(CGRect rect)
{
    return DFloat(CGRectGetMinY(rect),NO);
}

CGFloat RectMaxX(CGRect rect)
{
    return DFloat(CGRectGetMaxX(rect),YES);
}

CGFloat RectMaxY(CGRect rect)
{
    return DFloat(CGRectGetMaxY(rect),NO);
}

CGPoint APointMake(CGFloat X, CGFloat Y)
{
    return CGPointMake(AFloat(X, YES), AFloat(Y, NO));
}

CGSize ASizeMake(CGFloat W, CGFloat H)
{
    return CGSizeMake(AFloat(W, YES), AFloat(H, NO));
}

CGRect ARectMake(CGFloat X, CGFloat Y, CGFloat W, CGFloat H)
{
    return CGRectMake(AFloat(X, YES), AFloat(Y, NO), AFloat(W, YES), AFloat(H, NO));
}

#pragma mark- Font

UIFont *AutoSystemFont(CGFloat f)
{
    return [UIFont systemFontOfSize:AFloat(f, NO)];
}

UIFont *AutoBoldSystemFont(CGFloat f)
{
    return [UIFont boldSystemFontOfSize:AFloat(f, NO)];
}

UIFont *AutoFontWithName(NSString *fontName, CGFloat f)
{
    return [UIFont fontWithName:fontName size:AFloat(f, NO)];
}

#pragma mark- Color

UIColor *CSS(NSString *str, CGFloat a)
{
    if ([str rangeOfString:@"#"].location==0)
    {
        str = [str stringByReplacingOccurrencesOfString:@"#" withString:@""];
    }
    
    UIColor *CSSColor = nil;
    if ([str length] == 6)
    {
        NSRange range;
        range.location = 0;
        range.length = 2;
        
        NSString *rString = [str substringWithRange:range];
        
        range.location = 2;
        NSString *gString = [str substringWithRange:range];
        
        range.location = 4;
        NSString *bString = [str substringWithRange:range];
        
        // Scan values
        unsigned int r, g, b;
        [[NSScanner scannerWithString:rString] scanHexInt:&r];
        [[NSScanner scannerWithString:gString] scanHexInt:&g];
        [[NSScanner scannerWithString:bString] scanHexInt:&b];
        
        CSSColor = [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.0f alpha:a];
    }
    
    return CSSColor;
}

UIColor *RGB(CGFloat r, CGFloat g, CGFloat b, CGFloat a)
{
    return [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:a/255.f];
}

#pragma mark- Another

- (void)cornerRadius:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color
{
    CALayer *layer = [self layer];
    [layer setMasksToBounds:YES];
    [layer setCornerRadius:radius];
    [layer setBorderWidth:width];
    [layer setBorderColor:color.CGColor];
}

// 添加加载进度
- (void)addActivityIndicatorView
{
    if (![self viewWithTag:TAG_ACTIVITY])
    {
        UIActivityIndicatorView *activity =  [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
        activity.tag = TAG_ACTIVITY;
        activity.center = CGPointMake(CGRectGetMidX(self.bounds), CGRectGetMidY(self.bounds));
        [self addSubview:activity];
        [activity startAnimating];
        self.userInteractionEnabled = NO;
    }
}

// 移除ActivityIndicatorView
- (void)removeActivityIndicatorView
{
    UIActivityIndicatorView *activity = (UIActivityIndicatorView*)[self viewWithTag:TAG_ACTIVITY];
    if (!activity)
    {
        return;
    }
    else
    {
        [UIView beginAnimations:nil context:nil];
        [activity removeFromSuperview];
        [UIView commitAnimations];
        self.userInteractionEnabled = YES;
    }
}

- (void)removeAllSubviews
{
    while (self.subviews.count)
    {
        UIView* child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}

@end

@implementation  UITextField (Shark)

- (void)shake
{
    CAKeyframeAnimation *keyAn = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    [keyAn setDuration:0.5f];
    NSArray *array = [[NSArray alloc] initWithObjects:
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x-5, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x+5, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x-5, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x+5, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x-5, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x+5, self.center.y)],
                      [NSValue valueWithCGPoint:CGPointMake(self.center.x, self.center.y)],
                      nil];
    [keyAn setValues:array];
    NSArray *times = [[NSArray alloc] initWithObjects:@0.1f,@0.2f,@0.3f,@0.4f,@0.5f,@0.6f,@0.7f,@0.8f,@0.9f,@1.f,nil];
    [keyAn setKeyTimes:times];
    [self.layer addAnimation:keyAn forKey:@"position"];
}

@end
