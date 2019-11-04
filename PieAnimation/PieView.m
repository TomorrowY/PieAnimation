//
//  PieView.m
//  PieAnimation
//
//  Created by PC-LiuChunhui on 16/4/5.
//  Copyright © 2016年 Mr.Wendao. All rights reserved.
//

#import "PieView.h"
#define kAnimationDuration 1.0f
#define RGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define kPieBackgroundColor [UIColor grayColor]
#define kPieFillColor [UIColor clearColor].CGColor
#define kPieRandColor [UIColor colorWithRed:arc4random() % 255 / 255.0f green:arc4random() % 255 / 255.0f blue:arc4random() % 255 / 255.0f alpha:1.0f]
#define kLabelLoctionRatio (1.2*bgRadius)
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)



@implementation CircleItem
-(instancetype)init {
    
    if (self = [super init]) {
        _lineWidth = 25.0;
        _percentage = 1.0;
    }
    return self;
}



@end


@interface PieView() {
    double _startAngle;
    double _endAngle;
}
@property (nonatomic) CGFloat total;
@property (nonatomic) CAShapeLayer *bgCircleLayer;



@end

@implementation PieView

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        _startAngle = 0;
        _endAngle = 0;
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    self.layer.backgroundColor = [UIColor redColor].CGColor;
    if (_circleItemArray == nil) {
        return;
    }
    for (int i=0; i<_circleItemArray.count; i++) {
        CircleItem *item = _circleItemArray[i];
        [self drawCircleLineRect:rect circleItem:item];
    }
}
- (void)drawCircleLineRect:(CGRect)rect circleItem:(CircleItem *)circleItem  {
    _endAngle = _startAngle + circleItem.percentage*360.0;
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //绘制路径: 圆形(中心坐标200、200、半径100、起点弧度0、终点弧度2PI、画的方向0逆1正) 第五个参数 是startAngle开始的角度
    CGContextAddArc(ctx,  rect.size.width/2, rect.size.height/2, rect.size.width/2 - circleItem.lineWidth/2, DEGREES_TO_RADIANS(_startAngle), DEGREES_TO_RADIANS(_endAngle), 0);
//    CGContextSetRGBStrokeColor(ctx, circleItem.r, circleItem.g, circleItem.b, 1.0);
    CGContextSetStrokeColorWithColor(ctx, circleItem.color.CGColor);
    CGContextSetLineWidth(ctx, circleItem.lineWidth);//线条宽度
    CGContextStrokePath(ctx);
    
    _startAngle =_endAngle;
}


- (void)dealloc
{
    [self.layer removeAllAnimations];
}


@end
