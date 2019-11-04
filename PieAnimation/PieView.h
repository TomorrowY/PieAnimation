//
//  PieView.h
//  PieAnimation
//
//  Created by PC-LiuChunhui on 16/4/5.
//  Copyright © 2016年 Mr.Wendao. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface CircleItem : NSObject

@property (nonatomic,strong) UIColor *color;
@property (nonatomic,assign) float lineWidth;//线宽
@property (nonatomic,assign) double percentage;//百分比

@end


@interface PieView : UIView



@property (nonatomic,strong) NSArray *circleItemArray;

@end
