//
//  WMTitleVC.m
//  WMweibo
//
//  Created by 张靖乾 on 15-12-4.
//  Copyright (c) 2015年 ZJQ. All rights reserved.
//

#import "WMTitleVC.h"

@implementation WMTitleVC
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    if (indexPath.row == 0) {
    cell.textLabel.text = @"好友";
    }if (indexPath.row == 1) {
       cell.textLabel.text = @"misad";
    }else{
         cell.textLabel.text = @"sdasd";
    }
    
    return cell;
}
@end
