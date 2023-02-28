//
//  CHTableViewDelegate.m
//  Setting
//
//  Created by 范庆宇 on 2023/1/19.
//  Copyright © 2021 范庆宇. All rights reserved.
//

#import "QYTableViewDelegate.h"
#import "QYBaseTableViewCell.h"

@implementation QYTableViewDelegate

#pragma mark method

- (QYBaseTableInfo *)tableInfo {
    if (!_tableInfo) {
        _tableInfo = [[QYBaseTableInfo alloc]init];
    }
    return _tableInfo;
    
}
- (void)loadData:(QYBaseTableInfo *)tableInfo {
    self.tableInfo = tableInfo;
    
}

- (QYBaseSection *)getSection:(NSUInteger)section {
    return (QYBaseSection *)[self.tableInfo.dataDic valueForKey:[NSString stringWithFormat:@"%ld",section]];
    
}

- (id<QYBaseRowProtocol>)getRow:(NSIndexPath *)indexPath {
    QYBaseSection *section = [self getSection:indexPath.section];
    if (section.cellInfoArray.count > indexPath.row) {
        return [section.cellInfoArray objectAtIndex:indexPath.row];
    }
    return nil;
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if ([_delegate respondsToSelector:@selector(scroll:)]) {
        [_delegate scroll:scrollView];
        
    }
}

#pragma mark delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    id<QYBaseRowProtocol> row = [self getRow:indexPath];
    
    if (row.nextBlock) {
        if ([row.model isEqual:@"reload"]) {
            [UIView performWithoutAnimation:^{
                [tableView reloadSections:[NSIndexSet indexSetWithIndex:indexPath.section] withRowAnimation:UITableViewRowAnimationNone];
                
            }];
        }else {
            row.nextBlock(row.model);
        }
        
    }
}

#pragma mark dataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id<QYBaseRowProtocol> row = [self getRow:indexPath];
    QYBaseTableViewCell *cell = (QYBaseTableViewCell *)[tableView dequeueReusableCellWithIdentifier:NSStringFromClass(row.cellClass) forIndexPath:indexPath];
    [cell fillData:row];
    return cell;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.tableInfo.dataDic.allKeys.count;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    QYBaseSection *sectionModel = [self getSection:section];
    return sectionModel.cellInfoArray.count;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    id<QYBaseRowProtocol> row = [self getRow:indexPath];
    return row.config.height;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return [UIView new];
    
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return [UIView new];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    QYBaseSection *sectionModel = [self getSection:section];
    return sectionModel.headerHeight;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    QYBaseSection *sectionModel = [self getSection:section];
    return sectionModel.footerHeight;
    
}

- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.tableInfo.sectionIndexTitles;
    
}



@end
