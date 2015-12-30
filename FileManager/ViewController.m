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
    
    
    // sample data
    #define DIR_PATH           @"sample_directory"
    #define MOVE_DIR_PATH      @"move_sample_directory"
    #define FILE_NAME          @"pear.png"
    #define COPY_FILE_NAME     @"copy_pear.png"
    #define PERMISSION         @(0755)
    
    UIImage *image = [UIImage imageNamed:FILE_NAME];
    NSData * pearImageData = [[NSData alloc] initWithData:UIImagePNGRepresentation( image )];
    
    // Initialize
    PEARFileManager *fileManager = [PEARFileManager sharedInstatnce];
    [fileManager setRootDir:k_ROOT_DIR_LIBRARY];

    
    NSLog(@"\nIt's home directory path of this application.\ncopy and paste the text below at the Terminal.app.\n****************************\nopen %@",[fileManager getRootDirectoryPath]);

    NSArray *filenames = [fileManager fetchFileNameListsWithDirPath:[fileManager getRootDirectoryPath]];
    for (NSString *fileName in filenames)
    {
        NSLog(@"\n └ %@",fileName);
    }
    
    BOOL isbool;
    // create new directory
    isbool = [fileManager createDirectory:DIR_PATH permisson:PERMISSION];
    

    // create new File
    isbool = [fileManager createFileWithData:pearImageData
                           filePath:[fileManager joinFileName:FILE_NAME inDirPath:DIR_PATH]
                          permisson:PERMISSION];
    // update file
    isbool = [fileManager updateFileWithData:pearImageData
                           filePath:[fileManager joinFileName:FILE_NAME inDirPath:DIR_PATH]
                          permisson:PERMISSION];
    
    // copy file
    isbool = [fileManager copyFrompath:[fileManager joinFileName:FILE_NAME inDirPath:DIR_PATH]
                       toPath:[fileManager joinFileName:COPY_FILE_NAME inDirPath:DIR_PATH]];
    
    // delete file
    isbool = [fileManager deletePath:[fileManager joinFileName:FILE_NAME inDirPath:DIR_PATH]];
    
    // move directory
    isbool = [fileManager moveFromPath:DIR_PATH
                       toPath:MOVE_DIR_PATH];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
