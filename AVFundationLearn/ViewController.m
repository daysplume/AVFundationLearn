//
//  ViewController.m
//  AVFundationLearn
//
//  Created by WeiLuezh on 2018/1/13.
//  Copyright © 2018年 Daniel. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 合成器
    AVSpeechSynthesizer *synthesizer = [AVSpeechSynthesizer new];
    
    // 说话方式
    AVSpeechUtterance *utterpace = [[AVSpeechUtterance alloc] initWithString:@"711"];
    
    // 按照方式说话
    [synthesizer speakUtterance:utterpace];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
