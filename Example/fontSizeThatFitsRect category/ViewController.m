//
//  ViewController.m
//  fontSizeThatFitsRect category
//
//  Created by Niklas Berglund on 10/14/15.

//  The MIT License (MIT)
//
//  Copyright (c) 2015 Niklas Berglund
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.


#import "ViewController.h"
#import "NSString+fontSizeThatFitsRect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    //[self addLabels];
}

- (void)viewDidLayoutSubviews
{
    [self addLabels];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addLabels
{
    NSString *textString = @"Test";
    NSString *fontName = @"Helvetica";
    
    CGRect label1Frame = CGRectMake(0, 0, self.containerView1.frame.size.width, self.containerView1.frame.size.height);
    CGRect label2Frame = CGRectMake(0, 0, self.containerView2.frame.size.width, self.containerView2.frame.size.height);
    CGRect label3Frame = CGRectMake(0, 0, self.containerView3.frame.size.width, self.containerView3.frame.size.height);
    
    UILabel *label1 = [[UILabel alloc] initWithFrame:label1Frame];
    UILabel *label2 = [[UILabel alloc] initWithFrame:label2Frame];
    UILabel *label3 = [[UILabel alloc] initWithFrame:label3Frame];
    
    label1.text = textString;
    label2.text = textString;
    label3.text = textString;
    
    [self.containerView1 addSubview:label1];
    [self.containerView2 addSubview:label2];
    [self.containerView3 addSubview:label3];
    
    label1.font = [UIFont fontWithName:fontName size:[textString fontSizeThatFitsRect:self.containerView1.frame fontName:fontName]];
    label2.font = [UIFont fontWithName:fontName size:[textString fontSizeThatFitsRect:self.containerView2.frame fontName:fontName]];
    label3.font = [UIFont fontWithName:fontName size:[textString fontSizeThatFitsRect:self.containerView3.frame fontName:fontName]];
    
    label1.lineBreakMode = UILineBreakModeClip;
    label2.lineBreakMode = UILineBreakModeClip;
    label3.lineBreakMode = UILineBreakModeClip;
}

@end
