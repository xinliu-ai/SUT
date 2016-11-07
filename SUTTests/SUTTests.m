//
//  SUTTests.m
//  SUTTests
//
//  Created by xin on 16/11/6.
//  Copyright © 2016年 xin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Counter.h"
#import <OCHamcrestIOS/OCHamcrestIOS.h>
#import <OCMockitoIOS/OCMockitoIOS.h>

@interface SUTTests : XCTestCase

@end

@implementation SUTTests
{
    Counter *sut;
    NSUserDefaults *mockDefaults;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    mockDefaults = mock([NSUserDefaults class]);
    sut = [[Counter alloc] initWithUserDefalts:mockDefaults];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    sut = nil;
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testInitShouldNotReturnNil {
    Counter *counter = [[Counter alloc] initWithUserDefalts:[NSUserDefaults standardUserDefaults]];
    assertThat(counter, instanceOf([Counter class]));
}

- (void)testGetCountInDefaltsWithNilShouldReturnZero {
    [given([mockDefaults objectForKey:@"currentId"]) willReturn:nil];
    assertThatInteger([sut getCountInUserDefalts], equalToInteger(0));
}

- (void)testGetCountInDefaltsWithNumberSixShouldReturnIntegerSix {
    [given([mockDefaults objectForKey:@"currentId"]) willReturn:@6];
    assertThatInteger([sut getCountInUserDefalts], equalToInteger(6));
}



@end
