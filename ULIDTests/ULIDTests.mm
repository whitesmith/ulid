//
//  ULIDTests.mm
//  ULIDTests
//
//  Created by Ricardo Pereira on 14/02/2017.
//  Copyright © 2017 Whitesmith. All rights reserved.
//

#import <XCTest/XCTest.h>

#include <ULID/ULID.h>

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
    NSLog(@"%@", [[WSULID ulid] ULIDString]);
}

@end
