//
//  ViewController.m
//  AutoSizeDemo
//
//  Created by Dorigin on 16/3/29.
//  Copyright © 2016年 Dorigin. All rights reserved.
//

#import "ViewController.h"
#import "UIView+AutoSize.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

//    UIView *view = [[UIView alloc] initWithFrame:ARect(10, 10, 200, 200)];
//    view.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view];
//    
//    
//    UIView *view1 = [[UIView alloc] init];
//    view1.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view1];
    
//    view1.adjustRight
    
    
//    [view printFrame];
//    [view printIphone6Frame];
//    
//    DeviceSize type = CurrentDevice();
//    
//    float minX = RectMinX(view.frame);
//    float aleft = view.adjustLeft;
//    float maxX = RectMaxX(view.frame);
//    float aright = view.adjustRight;
//    float minY = RectMinY(view.frame);
//    float atop = view.adjustTop;
//    float maxY = RectMaxY(view.frame);
//    float abottom = view.adjustBottom;
//    
//    float top = view.top;
//    float left = view.left;
//    float right = view.right;
//    float bottom = view.bottom;
//    float witdth = view.width;
//    float height = view.height;
    
    
//    view.top = 21.f;
//    NSLog(@"%f",view.top);
//    view.left = 21.f;
//    NSLog(@"%f",view.left);
//    
//    view.toRight = 21.f;
//    NSLog(@"%f",view.right);
//    
//    view.toBottom = 21.f;
//    NSLog(@"%f",view.bottom);
    
//    view.adjustTop = 21.f;
//    NSLog(@"%f...%f",view.adjustTop,view.top);
//    view.adjustLeft = 21.f;
//    NSLog(@"%f...%f",view.adjustLeft,view.left);
//    
//    view.adjustToRight = 21.f;
//    NSLog(@"%f...%f",view.adjustRight,view.right);
//    
//    view.adjustToBottom = 21.f;
//    NSLog(@"%f...%f",view.adjustBottom,view.bottom);

    [self headerViewSet];
    
    NSLog(@"s");
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)headerViewSet
{
    UILabel *titleLable = [[UILabel alloc] init];
    titleLable.frame = ARectMake(45.f,65.f ,290.f, 35.f);
    [self.view addSubview:titleLable];
    titleLable.text = @"恭喜您 申请成功";
    titleLable.backgroundColor = [UIColor redColor];
    titleLable.font = [UIFont systemFontOfSize:AFloat(15.f, YES)];
    titleLable.textColor = [UIColor blueColor];
    titleLable.textAlignment = NSTextAlignmentCenter;
    
    
    NSLog(@"RectMinX%f-----%f",RectMinX(titleLable.frame),titleLable.aLeft);
    NSLog(@"RectMaxX%f-----%f",RectMaxX(titleLable.frame),titleLable.aRight);
    NSLog(@"%f-----%f",RectMinY(titleLable.frame),titleLable.aTop);
    NSLog(@"%f-----%f",RectMaxY(titleLable.frame),titleLable.aBottom);
    
    
    NSLog(@"%@-----%@  %@-----%@",NSStringFromCGRect(titleLable.aFrame),NSStringFromCGSize(titleLable.aSize),NSStringFromCGPoint(titleLable.aOrigin),NSStringFromCGPoint(titleLable.aCenter));
    
    UILabel *tipLable = [[UILabel alloc] init];
    tipLable.frame = ARectMake(titleLable.aLeft, titleLable.aBottom + 10, titleLable.aWidth,20.f);
    tipLable.textAlignment = NSTextAlignmentCenter;
    tipLable.backgroundColor = [UIColor greenColor];
    tipLable.text = @"预计1个工作日审核通过，1-2个工作日资金到账";
    [self.view addSubview:tipLable];
    
//    UIView *boardView = [[UIView alloc] initWithFrame:ARect(25.f, tipLable.aBottom + 45.f, SceenWidth6 - 50.f, 305.f)];
//    boardView.backgroundColor = [UIColor grayColor];
//    [self.view addSubview:boardView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
