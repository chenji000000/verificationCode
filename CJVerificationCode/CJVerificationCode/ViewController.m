//
//  ViewController.m
//  CJVerificationCode
//
//  Created by 陈吉 on 2016/12/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "CJVerCodeImageView.h"

@interface ViewController ()
@property (nonatomic, strong) CJVerCodeImageView *codeImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _codeImageView = [[CJVerCodeImageView alloc] initWithFrame:CGRectMake(100, 100, 80, 35)];
    _codeImageView.myblock = ^(NSString *imageCodeStr) {
    
        //看情况需要
        NSLog(@"imageCodeStr = %@", imageCodeStr);
    };
    _codeImageView.isRotation = NO;
    [_codeImageView freshVerCode];
    
    //点击刷新
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapClick:)];
    [_codeImageView addGestureRecognizer:tap];
    [self.view addSubview:_codeImageView];
}

- (void)tapClick:(UITapGestureRecognizer *)tap {

    [_codeImageView freshVerCode];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
