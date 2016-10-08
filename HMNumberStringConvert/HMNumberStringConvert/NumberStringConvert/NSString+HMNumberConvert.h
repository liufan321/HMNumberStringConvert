//
//  NSString+HMNumberConvert.h
//  HMNumberStringConvert
//
//  Created by 刘凡 on 2016/10/8.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HMNumberConvert)

/**
 返回数字字符串
 
 @param number       数字
 @param hasDotNumber 是否包含小数部分
 
 @return 数字字符串 x 万 x 千 x 百 x 十 x . x x
 */
+ (NSString *)hm_numberStringWithNumber:(double)number hasDotNumber:(BOOL)hasDotNumber;

/**
 返回时间字符串
 
 @param timeValue 时间秒数
 
 @return 时间字符串 xx 小时 xx 分钟 xx 秒
 */
+ (NSString *)hm_timeStringWithTimeValue:(NSInteger)timeValue;

@end
