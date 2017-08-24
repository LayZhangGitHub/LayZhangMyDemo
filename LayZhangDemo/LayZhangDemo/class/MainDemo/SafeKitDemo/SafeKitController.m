//
//  SafeKitController.m
//  LayZhangDemo
//
//  Created by LayZhang on 2017/8/24.
//  Copyright © 2017年 Zhanglei. All rights reserved.
//

#import "SafeKitController.h"
#import "SafeObjectMarco.h"
//#import "NSArray+Safe.h"


@interface SafeKitController ()

@end

@implementation SafeKitController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self safeTest];
}

- (void)safeTest {
    NSArray *array = @[@"1"];
    NSString *value = array[2];
    NSLog(@"%@", value);
    
    NSString *nilString = nil;
    NSArray *array1 = [[NSArray alloc] initWithObjects:nilString, nil];
    NSString *value1 = array1[3];
    NSLog(@"%@", value1);
    
    NSArray *array2 = @[];
    NSString *value2 = array2[0];
    NSLog(@"%@", value2);
    
    NSMutableArray *array3 = [[NSMutableArray alloc] init];
    NSString *value3 = array3[0];
    [array3 setObject:nilString atIndexedSubscript:0];
    NSLog(@"%@", value3);
    
    [array3 insertObject:nilString atIndex:100];
    
//    array3 insertObject:<#(nonnull id)#> atIndex:<#(NSUInteger)#>
//    array3 setObject:<#(nonnull id)#> atIndexedSubscript:<#(NSUInteger)#>

    
//    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
//    [dic setObject:nil forKey:@"key"];
}



@end