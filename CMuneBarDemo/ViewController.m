//
//  ViewController.m
//  CMuneBarDemo
//
//  Created by macairwkcao on 16/1/28.
//  Copyright © 2016年 CWK. All rights reserved.
//

#import "ViewController.h"

#import "CMuneBar.h"

@interface ViewController ()<CMuneBarDelegate,CMuneBarFirstDelegate>
@property(nonatomic,weak)CMuneBar *muneBar;
@property(nonatomic,weak)CMuneBar *secondMuneBar;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CMuneBar *muneBar = [[CMuneBar alloc] initWithItems:@[@"camera",@"draw"] size:CGSizeMake(50, 50) type:kMuneBarTypeLineLeft];
    muneBar.firstDelegate = self;
    muneBar.center = self.view.center;
    [self.view addSubview:muneBar];
    self.muneBar = muneBar;
    
    
    CMuneBar *secondMuneBar = [[CMuneBar alloc] initWithItems:@[@"gallery",@"dropbox"] size:CGSizeMake(50, 50) type:kMuneBarTypeLineRight];
    secondMuneBar.delegate = self;
    secondMuneBar.center = self.view.center;
    [self.view addSubview:secondMuneBar];
    self.secondMuneBar = secondMuneBar;
}



-(void)didClicksegmentedControlAction:(UISegmentedControl *)segmentedControl{
    if (self.muneBar.isShow) {
        [self.muneBar hideItems];
    }
    self.muneBar.type = kMuneBarTypeLineLeft;
    self.secondMuneBar.type = kMuneBarTypeLineRight;
}


/**
 *  右边item点击代理事件
 *
 *  @param index 索引
 */
-(void)muneBarselected:(NSInteger)index{
    NSLog(@"%@",@(index));
}

- (void)muneBarShow {
    [self.muneBar showItems];
    NSLog(@"展开");
}

- (void)muneBarHide {
    NSLog(@"显示");
}

/**
 *  左边item点击代理事件
 *
 *  @param index 索引
 */- (void)firstMuneBarselected:(NSInteger)index {
    NSLog(@"%@",@(index));
}


@end
