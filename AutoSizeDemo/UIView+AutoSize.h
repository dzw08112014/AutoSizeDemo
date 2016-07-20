//
//  UIView+AutoSize.h
//  AutoADemo
//
//  Created by Dorigin on 15/11/20.
//  Copyright © 2015年 Dorigin. All rights reserved.
//


#import <UIKit/UIKit.h>

#define SceenWidth6 375.f
#define SceenHeight6 667.f
#define SceenHeight [UIScreen mainScreen].bounds.size.height
#define SceenWidth  [UIScreen mainScreen].bounds.size.width

@interface UIView (AutoSize)

typedef enum{
    Inch3_5,
    Inch4,
    Inch4_7,
    Inch5_5
}DeviceSize;

/*
 frame.origin.y = top
 */
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat aTop;

/*
 frame.origin.x = right
 */
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGFloat aRight;

/*
 frame.origin.y = bottom
 */
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat aBottom;

/*
 frame.origin.x = left
 */
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat aLeft;

/*
 frame.size.width = width
 */
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat aWidth;

/*
 frame.size.height = height
 */
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat aHeight;

/*
 center.x = centerX
 */
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat aCenterX;

/*
 center.y = centerY
 */
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat aCenterY;

/**
 frame.origin
 */
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGPoint aOrigin;

/**
 frame.size
 */
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGSize aSize;

/**
 frame
 */
@property (nonatomic, assign) CGRect aFrame;

/**
 center
 */
@property (nonatomic, assign) CGPoint aCenter;


/*
 ******************** warn ***********************
 toBottom || toRight must be used ofter add subview
 ******************** warn ***********************
 */

/*
 toRight = self.superview.width - right - frame.size.width
 */
@property (nonatomic, assign) CGFloat toRight;
@property (nonatomic, assign) CGFloat aToRight;

/*
 toBottom = self.superview.height - bottom - frame.size.height
 */
@property (nonatomic, assign) CGFloat toBottom;
@property (nonatomic, assign) CGFloat aToBottom;


#ifndef __INCvxWorksh  /*防止该头文件被重复引用*/
#define __INCvxWorksh

#ifdef __cplusplus    //__cplusplus是cpp中自定义的一个宏
extern "C" {          //告诉编译器，这部分代码按C语言的格式进行编译，而不是C++的
    
#endif
    
    /** auto font */
    
    extern UIFont *AutoSystemFont(CGFloat f);
    extern UIFont *AutoBoldSystemFont(CGFloat f);
    extern UIFont *AutoFontWithName(NSString *fontName, CGFloat f);
    
    /** RGB CSS Color */
    
    extern UIColor *CSS(NSString *str, CGFloat a);
    extern UIColor *RGB(CGFloat r, CGFloat g, CGFloat b, CGFloat a);
    
    
    //获取机型尺寸
    extern DeviceSize CurrentDevice();
    
    //坐标转换
    /*auto Exchange */
    
    extern CGFloat aFloat(CGFloat X);
    //其他尺寸转inch4.7坐标
    extern CGFloat dFloat(CGFloat X);
    
    //4inch坐标转换 其他尺寸坐标
    extern CGFloat AFloat(CGFloat X, bool isWidth);
    //其他尺寸转inch4.7坐标
    extern CGFloat DFloat(CGFloat X, bool isWidth);
    
    /*CGRectGetMinX */
    extern CGFloat RectMinX(CGRect rect);
    /*CGRectGetMinY */
    extern CGFloat RectMinY(CGRect rect);
    /*CGRectGetMinX */
    extern CGFloat RectMaxX(CGRect rect);
    /*CGRectGetMaxY */
    extern CGFloat RectMaxY(CGRect rect);
    /*CGPointMake */
    extern CGPoint APointMake(CGFloat x, CGFloat y);
    /*CGSizeMake */
    extern CGSize  ASizeMake(CGFloat w, CGFloat h);
    /*CGFrameMake */
    extern CGRect  ARectMake(CGFloat X, CGFloat Y, CGFloat W, CGFloat H);
    /**** some declaration or so *****/
    
#ifdef __cplusplus
}
#endif

#endif


/**
 removes all subviews.
 */
- (void)removeAllSubviews;

/*
 设置圆角
 */
- (void)cornerRadius:(CGFloat)radius borderWidth:(CGFloat)width borderColor:(UIColor *)color;

/*
 添加加载进度
 */
- (void)addActivityIndicatorView;

/*
 移除UIActivityIndicatorView
 */
- (void)removeActivityIndicatorView;

@end

@interface UITextField (Shark)

/*输入框晃动*/
- (void) shake;

@end
