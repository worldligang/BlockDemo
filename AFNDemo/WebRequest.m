//
//  WebRequest.m
//  AFNDemo
//
//  Created by joanfen on 14-9-23.
//  Copyright (c) 2014年 芳仔小脚印. All rights reserved.
//

#import "WebRequest.h"

@implementation WebRequest

-(void)requestNameWithID:(NSString *)ID WithSuccess:(void (^)(AFHTTPRequestOperation *operation, id responseObject, NSDictionary *myData))success
                 failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure{
    
    
    NSURL *url = [NSURL URLWithString:@"用ID拼接地接口地址"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSDictionary *dic = responseObject[@"someKey"];
        
        success(operation, responseObject, dic);// 此处将网络返回值传递给我们自己定义的Block中的三个返回值，dic可以自定义，也可不加，如此可以返回经自己在这里已经处理好的对象，而不必调用一次，处理一次
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(operation,error);// 与方法定义中的Block一致
    }];
    
}


@end
