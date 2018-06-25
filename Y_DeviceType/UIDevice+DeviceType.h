//
//  UIDevice+DeviceType.h
//  Y_DeviceType
//
//  Created by Yue on 2017/6/25.
//  Copyright © 2017年 Yue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (DeviceType)

//当前设备的型号
+ (NSString *)deviceTypeName;
// 当前应用名称
+ (NSString *)appDisplayName;
// 当前应用Version号
+ (NSString *)appShortVersion;
// 当前应用Build号
+ (NSString *)appBuildVersion;

@end
