//
//  ULIDTests.mm
//  ULIDTests
//
//  Created by Ricardo Pereira on 14/02/2017.
//  Copyright © 2017 Whitesmith. All rights reserved.
//

#import <XCTest/XCTest.h>

#include <ULID/ULID.hpp>

using namespace ulid;

@interface ULIDTests : XCTestCase

@end

@implementation ULIDTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testULID {
    // From example: https://github.com/suyash/ulid#usage
    NSTimeInterval timestamp = [[NSDate date] timeIntervalSince1970];
    ULID ulid = ulid::Create(timestamp, []() { return 4; });
    std::string str = ulid::Marshal(ulid);
    NSLog(@"%@", [NSString stringWithCString:str.c_str() encoding:[NSString defaultCStringEncoding]]);
}

@end
