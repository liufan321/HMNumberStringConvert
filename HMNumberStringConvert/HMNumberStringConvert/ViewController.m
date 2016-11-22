//
//  ViewController.m
//  HMNumberStringConvert
//
//  Created by 刘凡 on 2016/10/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "NSString+HMNumberConvert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // --- 测试数字转换 ---
    NSLog(@"%@", [NSString hm_numberStringWithNumber:23412345.23 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:20012345.23 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:20002345.23 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:12345.23 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:20101.23 hasDotNumber:NO]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:1001 hasDotNumber:NO]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:123 hasDotNumber:NO]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:113 hasDotNumber:NO]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:59 hasDotNumber:NO]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:13 hasDotNumber:NO]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:1 hasDotNumber:NO]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:0 hasDotNumber:NO]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:0.31 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:0.20 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:1.00 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:10.50 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:20.50 hasDotNumber:YES]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:200 hasDotNumber:false]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:201 hasDotNumber:false]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:1000 hasDotNumber:false]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:10000 hasDotNumber:false]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:10001 hasDotNumber:false]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:100000 hasDotNumber:false]);
    NSLog(@"%@", [NSString hm_numberStringWithNumber:200000 hasDotNumber:false]);
    
    // --- 测试时间转换 ---
    NSLog(@"%@", [NSString hm_timeStringWithTimeValue:59]);
    NSLog(@"%@", [NSString hm_timeStringWithTimeValue:60 * 3 + 59]);
    NSLog(@"%@", [NSString hm_timeStringWithTimeValue:60 * 18 + 3]);
    NSLog(@"%@", [NSString hm_timeStringWithTimeValue:60 * 60 + 3]);
    NSLog(@"%@", [NSString hm_timeStringWithTimeValue:60 * 60 + 60 * 3 + 13]);
    NSLog(@"%@", [NSString hm_timeStringWithTimeValue:12 * 60 * 60 + 60 * 23 + 53]);
    NSLog(@"%@", [NSString hm_timeStringWithTimeValue:10 * 60 + 53]);
}

@end
