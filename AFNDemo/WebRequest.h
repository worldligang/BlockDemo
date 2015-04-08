//
//  WebRequest.h
//  AFNDemo
//
//  Created by joanfen on 14-9-23.
//  Copyright (c) 2014年 芳仔小脚印. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFNetworking.h"

@interface WebRequest : NSObject


-(void)requestNameWithID:(NSString *)ID WithSuccess:(void (^)(AFHTTPRequestOperation *operation, id responseObject, NSDictionary *myData))success
                 failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
