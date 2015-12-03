//
//  LLSHitTestView.m
//  LLSHitTestView
//
//  Created by liulishuo on 11/30/15.
//  Copyright © 2015 liulishuo. All rights reserved.
//

#import "LLSHitTestView.h"

@implementation LLSHitTestView

- (nullable UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    
    UIView *view = [super hitTest:point withEvent:event];
    
    if(_hitTestType == LLSHitTestTypeIgnore)
    {
        if([view isEqual:self])
        {
            return nil;
        }
    }
    
    //优先判断子视图可否响应事件
    UIView *tempView;
    if (_hitTestType == LLSHitTestTypeNoClip)
    {
        tempView = [self getTargetView:self point:point event:event];
    }
    
    //如果是 返回
    if(tempView)
    {
        view = tempView;
    }
    
    //是否需要指定范围
    if(_path)
    {
        if(!CGPathContainsPoint(_path.CGPath, NULL, point, NO))
        {
            return nil;
        }
    }
    
    
    return view;
}

- (UIView *)getTargetView:(UIView *)view
                    point:(CGPoint)point
                    event:(UIEvent *)event
{
    
    __block UIView *subView;
    
    //逆序 由层级最低 也就是最上层的子视图开始
    [view.subviews enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //point 从view 转到 obj中
        CGPoint hitPoint = [obj convertPoint:point fromView:view];
        //        NSLog(@"%@ - %@",NSStringFromCGPoint(point),NSStringFromCGPoint(hitPoint));
        
        if([obj pointInside:hitPoint withEvent:event])//在当前视图范围内
        {
            if(obj.subviews.count != 0)
            {
                //如果有子视图 递归
                subView = [self getTargetView:obj point:hitPoint event:event];
                
                if(!subView)
                {
                    //如果没找到 提交当前视图
                    subView = obj;
                }
            }
            else
            {
                subView = obj;
            }
            
            *stop = YES;
        }
        else//不在当前视图范围内
        {
            if(obj.subviews.count != 0)
            {
                //如果有子视图 递归
                subView = [self getTargetView:obj point:hitPoint event:event];
            }
        }
        
    }];
    
    return subView;
}


@end
