//
//  SUT.h
//  SUT
//
//  Created by xin on 16/11/6.
//  Copyright © 2016年 xin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SUT : NSObject

@property (nonatomic) NSInteger count;

@property (nonatomic,strong) NSUserDefaults *defaults;

-(id) initWithUserDefalts:(NSUserDefaults *) defaults;

-(void) increstment;

-(void) decrestment;

-(NSInteger) getCountInUserDefalts;


@end
