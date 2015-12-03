//
//  LLSHitTestView.h
//  LLSHitTestView
//
//  Created by liulishuo on 11/30/15.
//  Copyright © 2015 liulishuo. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  @author Liulishuo
 *
 *  指定hit－testing规则
 */
typedef NS_ENUM(NSInteger, LLSHitTestType) {
    /**
     *  @author Liulishuo
     *
     *  正常
     */
    LLSHitTestTypeNormal,
    /**
     *  @author Liulishuo
     *
     *  不响应事件 && 不截断响应链
     */
    LLSHitTestTypeIgnore,
    /**
     *  @author Liulishuo
     *
     *  可超出父视图范围响应
     *  其上子视图的hit－testing规则全部失效
     */
    LLSHitTestTypeNoClip,

};

@interface LLSHitTestView : UIView

@property (nonatomic, assign) LLSHitTestType hitTestType;

@property (nonatomic, strong) UIBezierPath *path;//用来指定区域

@end
