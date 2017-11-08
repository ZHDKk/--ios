//
//  ViewController.m
//  步进器和分栏控件
//
//  Created by zh dk on 2017/8/21.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize _stepper = _stepper;
@synthesize _segControl = _segControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建步进器对象
    _stepper = [[UIStepper alloc] init];
    _stepper.frame = CGRectMake(100, 100, 80, 40);
    _stepper.minimumValue = 0; //最小值
    _stepper.maximumValue = 100;//最大值
    _stepper.value = 10; //当前值，不设置则为0
    _stepper.stepValue = 5;//每次向前活着向后步进的值
    _stepper.autorepeat = YES;//设置是否可以重复响应事件操作
    _stepper.continuous = YES;//是否将步进结果通过事件函数响应出来
    
    [_stepper addTarget:self action:@selector(pressChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview: _stepper];
    
    //创建分栏控件
    _segControl = [[UISegmentedControl alloc] init];
    //设置控件位置,宽度可变，高度不可变
    _segControl.frame = CGRectMake(50, 200, 300, 40);
    //添加按钮与元素;参数一：按钮选项的文字;参数二：按钮的索引位；参数三：是否有插入的动画效果
    [_segControl insertSegmentWithTitle:@"0元"  atIndex:0 animated:NO];
    [_segControl insertSegmentWithTitle:@"5元"  atIndex:1 animated:NO];
    [_segControl insertSegmentWithTitle:@"10元" atIndex:2 animated:NO];
    [_segControl insertSegmentWithTitle:@"15元" atIndex:3 animated:NO];
    //当前默认索引位置
    _segControl.selectedSegmentIndex = 0;
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segControl];
}

-(void) segChange{
    NSLog(@"%ld",_segControl.selectedSegmentIndex);
}

-(void) pressChange{
    NSLog(@"点击 value=%f",_stepper.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
