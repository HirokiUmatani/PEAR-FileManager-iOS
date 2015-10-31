//
//  ViewController.m
//  FileManager
//
//  Created by hirokiumatani on 2015/10/31.
//  Copyright (c) 2015年 hirokiumatani. All rights reserved.
//

#import "ViewController.h"
#import "PEARFileManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // new Directory
    [PEARFileManager createDirectory:@"sampleDirectory"
                           permisson:@(755)];
    NSLog(@"Home Directory Path : %@",NSHomeDirectory());
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
