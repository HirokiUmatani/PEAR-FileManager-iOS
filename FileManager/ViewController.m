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
    NSLog(@"\nIt's home directory path of this application.\ncopy and paste the text below at the Terminal.app.\n****************************\nopen %@",NSHomeDirectory());
    
    
    
#define DIR_PATH @"sample_directory"
#define FILE_NAME @"pear"
#define PERMISSION @(0755)
    // new Directory
    [PEARFileManager createDirectory:DIR_PATH
                           permisson:PERMISSION];
    
    // new File
    UIImage *image = [UIImage imageNamed:@"pear"];
    NSData * pearImageData = [[NSData alloc] initWithData:UIImagePNGRepresentation( image )];
    
    [PEARFileManager createFile:pearImageData
                        dirPath:DIR_PATH
                       filePath:FILE_NAME
                      permisson:PERMISSION];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
