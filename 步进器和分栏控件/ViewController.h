//
//  ViewController.h
//  步进器和分栏控件
//
//  Created by zh dk on 2017/8/21.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义步进器对象:按照一定的数值来调整某个数据
    UIStepper *_stepper;
    
    //分栏控制器
    UISegmentedControl *_segControl;
    
}

//属性的定义
@property (retain, nonatomic) UIStepper *_stepper;
@property (retain,nonatomic) UISegmentedControl *_segControl;
@end

