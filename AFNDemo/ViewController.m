//
//  ViewController.m
//  AFNDemo
//
//  Created by joanfen on 14-9-19.
//  Copyright (c) 2014年 芳仔小脚印. All rights reserved.
//

#import "ViewController.h"

#import "blockCell.h"

#import "WebRequest.h"

@interface ViewController ()
            

@end

@implementation ViewController
            
- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self.tableView registerNib:[blockCell nib] forCellReuseIdentifier:@"blockCell"];
    
    int (^counts)(int) = ^(int count){return count+1 ;};
    
    
    NSString *(^str)(NSNumber *num) = ^ (NSNumber *num){
        return [NSString stringWithFormat:@"%@",num];
    };
    
    void (^blank)(NSNumber *count) = ^(NSNumber *count){
        NSLog(@"无返回类型Block");
    };
    
    void (^blanks)(void) = ^{
        NSLog(@"无返回类型也无参数 Block");
    };
    
    
    
}

typedef int (^count)(int);

void func(count s){
    
}

-(void)funcWithCount:(int (^)(int))count{
    
}


- (void)random{
  
    
    NSNumber *(^randArray)(void) = ^{
        int rand = arc4random() % 100;
        
        NSNumber *number = [NSNumber numberWithInt:rand];
        return number;
    };
    
    NSMutableArray *array1 = [[NSMutableArray alloc] init];
    NSMutableArray *array2 = [[NSMutableArray alloc] init];
    
    for (NSInteger index = 0; index<10; index++) {
        [array1 addObject:randArray];
    }
    
    for (NSInteger index = 0; index<5; index++) {
        [array2 addObject:randArray];
    }
    
}


-(void)requestTest{
    WebRequest *request = [[WebRequest alloc] init];
    
    [request requestNameWithID:@"123" WithSuccess:^(AFHTTPRequestOperation *operation, id responseObject, NSDictionary *myData) {
        
        // 在网络成功时在这里就可以得到返回值了
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        // 网络失败回调
        
    }];
}

#pragma mark - table

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellID = @"blockCell";
    
    blockCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    cell.action = ^(blockCell *cell){
        // 既可取到行，也可取到switch状态
        NSLog(@"行数：%ld, switch state: %u", (long)indexPath.row, cell.switchBtn.on);
       
    };
    
    return cell;
}


@end
