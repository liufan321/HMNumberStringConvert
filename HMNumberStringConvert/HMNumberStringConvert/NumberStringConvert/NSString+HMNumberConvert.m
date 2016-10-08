//
//  NSString+HMNumberConvert.m
//  HMNumberStringConvert
//
//  Created by 刘凡 on 2016/10/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "NSString+HMNumberConvert.h"

NSString *const HMNumberUnitList = @"| 十 | 百 | 千 | 万 | 十 | 百 | 千 ";

@implementation NSString (HMNumberConvert)

+ (NSString *)hm_timeStringWithTimeValue:(NSInteger)timeValue {
    
    NSMutableString *textM = [NSMutableString string];
    
    NSInteger h = timeValue / 3600;
    if (h > 0) {
        [textM appendFormat:@"%@ 小时 ", [self hm_numberStringWithNumber:h hasDotNumber:NO]];
    }
    
    NSInteger m = (timeValue % 3600) / 60;
    if (h > 0 && m == 0) {
        [textM appendString:@"0 "];
    } else if (h > 0 || m > 0) {
        [textM appendFormat:@"%@ 分钟 ", [self hm_numberStringWithNumber:m hasDotNumber:NO]];
    }
    
    NSInteger s = timeValue % 60;
    [textM appendFormat:@"%@ 秒", [self hm_numberStringWithNumber:s hasDotNumber:NO]];
    
    return textM.copy;
}


+ (NSString *)hm_numberStringWithNumber:(double)number hasDotNumber:(BOOL)hasDotNumber {
    
    // 1. 准备工作
    NSArray <NSString *>*unitArray = [HMNumberUnitList componentsSeparatedByString:@"|"];
    
    NSInteger value = (NSInteger)number;
    NSString *valueSting = [NSString stringWithFormat:@"%zd", value];
    
    if (valueSting.length > unitArray.count) {
        return @"数字太大，无法转换";
    }
    
    // 2. 整数部分转换
    NSMutableString *textM = [NSMutableString string];
    
    NSInteger len = valueSting.length;
    BOOL hasZero = NO;
    for (NSInteger i = 0; i < len; i++) {
        NSString *s = [valueSting substringWithRange:NSMakeRange(i, 1)];
        
        NSInteger loc = len - i - 1;
        NSString *unit = unitArray[loc];
        
        if (s.integerValue > 0) {
            [textM appendFormat:@"%@%@", s, unit];
            hasZero = NO;
        } else if (!hasZero) {
            [textM appendString:@"0 "];
            hasZero = YES;
        }
        
        // 单独处理`万`
        if (loc == 4 && hasZero) {
            [textM appendString:@"万 "];
        }
    }
    
    // 替换 `0 万`
    [textM replaceOccurrencesOfString:@"0 万" withString:@"万" options:0 range:NSMakeRange(0, textM.length)];
    
    // 处理 `1 十` 情况
    if (valueSting.length == 2) {
        [textM replaceOccurrencesOfString:@"1 十" withString:@"十" options:0 range:NSMakeRange(0, textM.length)];
    }
    
    // 3. 小数部分转换
    textM = [NSMutableString stringWithString:[textM stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
    
    if (!hasDotNumber) {
        return textM.copy;
    }
    
    NSString *dotString = [NSString stringWithFormat:@"%.02f", (number - value)];
    dotString = [dotString substringFromIndex:1];
    
    [textM appendString:@" "];
    for (NSInteger i = 0; i < dotString.length; i++) {
        NSString *s = [dotString substringWithRange:NSMakeRange(i, 1)];
        
        if (!(i == dotString.length - 1 && s.integerValue == 0)) {
            [textM appendFormat:@"%@ ", s];
        }
    }
    
    return [textM stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

@end
