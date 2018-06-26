//
//  ViewController.m
//  Y_DeviceTypeExample
//
//  Created by Yue on 2017/6/25.
//  Copyright © 2017年 Yue. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+DeviceType.h"

static NSString *const tableViewCellID = @"tableViewCellReuseIdentifier";
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:tableViewCellID];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewCellID forIndexPath:indexPath];
    if (indexPath.row == 3) {
        cell.textLabel.text = [NSString stringWithFormat:@"设备类型：%@",[UIDevice deviceTypeName]];
    }
    else if (indexPath.row == 4) {
        cell.textLabel.text = [NSString stringWithFormat:@"应用名称：%@",[UIDevice appDisplayName]];
    }
    else if (indexPath.row == 5) {
        cell.textLabel.text = [NSString stringWithFormat:@"项目中的 Version：%@",[UIDevice appShortVersion]];
    }
    else if (indexPath.row == 6) {
        cell.textLabel.text = [NSString stringWithFormat:@"项目中的 Build：%@",[UIDevice appBuildVersion]];
    }
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
