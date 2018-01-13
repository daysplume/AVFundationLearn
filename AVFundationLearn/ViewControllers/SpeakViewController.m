//
//  SpeakViewController.m
//  AVFundationLearn
//
//  Created by Daniel on 2018/1/14.
//  Copyright © 2018年 Daniel. All rights reserved.
//

#import "SpeakViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface SpeakViewController ()

@property (unsafe_unretained, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic, strong)AVSpeechSynthesizer *synthesizer;
@property (nonatomic, strong)AVSpeechUtterance *utterance;
@end

@implementation SpeakViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:true];
}

- (IBAction)speak:(id)sender {
    // 按照方式说话
    self.utterance = [[AVSpeechUtterance alloc] initWithString:_textView.text];
    [self.synthesizer speakUtterance:self.utterance];
    
    /*
     AVCaptureDevice 代表了输入设备,例如摄像头和麦克风
     AVCaptureInput  代表了输入数据源
     AVCaptureOutput 代表了输出数据源
     AVCaptureConnection 是一个链接,是input和output之间或者是图像当前预览层和当前会话之间的链接
     AVCaptureVideoPreviewLayer 提供摄像头的预览功能,照片以及视频的显示就是通过把这个对象添加到UIView上
     */
}

- (AVSpeechSynthesizer *)synthesizer {
    if (!_synthesizer) {
        _synthesizer = [AVSpeechSynthesizer new];
    }
    return _synthesizer;
}

- (AVSpeechUtterance *)utterance {
    if (!_utterance) {
        _utterance = [[AVSpeechUtterance alloc] initWithString:_textView.text];
    }
    return _utterance;
}

@end
