//
//  ViewController.m
//  PieAnimation
//
//  Created by PC-LiuChunhui on 16/4/5.
//  Copyright © 2016年 Mr.Wendao. All rights reserved.
//

#import "ViewController.h"
#import "PieView.h"
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
@interface ViewController ()
@property (nonatomic, strong) PieView *pie;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CircleItem *item1 = [[CircleItem alloc] init];
//    item1.r = 0.2;
//    item1.g = 0.2;
//    item1.b = 0.2;
    item1.color = [UIColor redColor];
    item1.percentage = 0.3;
    
    CircleItem *item2 = [[CircleItem alloc] init];
//    item2.r = 0.6;
//    item2.g = 0.6;
//    item2.b = 0.6;
     item2.color = [UIColor greenColor];
    item2.percentage = 0.3;
    
    CircleItem *item3 = [[CircleItem alloc] init];
//    item3.r = 0.8;
//    item3.g = 0.5;
//    item3.b = 0.9;
    item3.color = [UIColor yellowColor];
    item3.percentage = 0.4;
    
    CircleItem *item4 = [[CircleItem alloc] init];
//    item4.r = 0.4;
//    item4.g = 0.8;
//    item4.b = 1.0;
    item4.percentage = 0;
     item4.color = [UIColor orangeColor];
    PieView * circleView = [[PieView alloc] initWithFrame:CGRectMake(10, 300, 106, 106)];
    [self.view addSubview:circleView];
    circleView.circleItemArray = @[item1,item2,item3,item4];
    [circleView setNeedsLayout];

    NSDate *currentDate = [NSDate date];//获取当前时间，日期
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM"];
    NSString *dateString = [dateFormatter stringFromDate:currentDate];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 56, 20)];
    [self.view addSubview:label];
    label.text = dateString;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:14];
    label.center = circleView.center;
    
//    _pie = [[PieView alloc] initWithFrame:CGRectMake(0, 100, kScreenWidth, kScreenWidth)];
//    _pie = [[PieView alloc] initWithFrame:CGRectMake((kScreenWidth - 200) * 0.5f, 100, 100, 100) dataItems:@[@4, @1, @5] colorItems:@[[UIColor redColor], [UIColor greenColor], [UIColor blueColor]]];
//    [self.view addSubview:_pie];
    
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [_pie stroke];
}
@end
