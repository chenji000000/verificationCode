//
//  CJVerCodeImageView.h
//  CJVerificationCode
//
//  Created by 陈吉 on 2016/12/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CJCodeImageBlock) (NSString *codeStr);

@interface CJVerCodeImageView : UIView
@property (nonatomic, strong) NSString *imageCodeStr;
@property (nonatomic, assign) BOOL isRotation;
@property (nonatomic, copy) CJCodeImageBlock myblock;

- (void)freshVerCode;
@end
