//
//  LLSHitTestView.h
//  LLSHitTestView
//
//  Created by liulishuo on 11/30/15.
//  Copyright © 2015 liulishuo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, LLSHitTestType) {
    LLSHitTestTypeNormal,//正常
    LLSHitTestTypeIgnore,//不响应事件 && 不截断响应链
    LLSHitTestTypeNoClip,//可超出父视图范围响应
};

@interface LLSHitTestView : UIView

@property (nonatomic, assign) LLSHitTestType hitTestType;

@property (nonatomic, assign) NSInteger code;

@end
