//
//  ViewController.m
//  MCLabel
//
//  Created by zhidao on 2017/3/2.
//  Copyright © 2017年 muchen. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+MCLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(20, 100, self.view.frame.size.width-20*2, 300)];
    label.font = [UIFont systemFontOfSize:15];
    label.numberOfLines = 0;
    label.text = @"秋风落叶散落离花，深情的寒秋总被黑夜所记。遗忘的季节总被流年搁浅，深记的远去演奏了时光的河畔，任清风吹过思念的深夜。沉沦在陌上的缘浅，三生三世落雪为证落雨为花。情深缘浅雨夜離殇，一路的离别相聚的回首。清澈了所有的风化，见证了所有的花开。";
    [self.view addSubview:label];
    
    //当设置了UILabel的attributedText属性时textAlignment会失效  可以通过NSMutableParagraphStyle的baseWritingDirection这个属性来实现  我封装了对应的方法：setTextDirection，可以调用这个方法设置。

    [label setColumnSpace:5];
    [label setRowSpace:10];
//    [label setTextDirection:MCTextDirectionRight];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
