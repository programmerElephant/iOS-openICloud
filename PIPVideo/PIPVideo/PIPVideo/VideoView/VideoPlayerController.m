//
//  VideoPlayerContrller.m
//  PIPVideo
//
//  Created by zzg on 2018/12/12.
//  Copyright © 2018年 zzg. All rights reserved.
//

#import "VideoPlayerController.h"

@interface VideoPlayerController ()

@end

@implementation VideoPlayerController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _zView = [[VideoView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_zView];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"282" ofType:@"mp4"];
    [_zView setPath:path];
    [_zView setTitle:@"视频播放"];
    //    _zView.VideoBackgroundColor = [UIColor blackColor];
    //    _zView.supportPictureInpicture = YES;  // 支持画中画,则不支持后台暂停，反之。。。
    
    [_zView play];
    
}


@end
