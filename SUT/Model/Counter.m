//
//  Counter.m
//  SUT
//
//  Created by xin on 16/11/7.
//  Copyright © 2016年 xin. All rights reserved.
//

#import "Counter.h"

@implementation Counter

- (id)initWithUserDefalts:(NSUserDefaults *) defaults {
    self = [super init];
    if(self){
        _defaults = defaults;
        _count = [self getCountInUserDefalts];
    }
    return self;
}

- (void)increstment {
    
}

- (void)decrestment {
    
}

- (NSInteger) getCountInUserDefalts {
    NSNumber *reminderId = [_defaults objectForKey:@"currentId"];
    if(reminderId){
        reminderId = reminderId;
    } else{
        reminderId = @0;
    }
    return [reminderId integerValue];
}

@end
