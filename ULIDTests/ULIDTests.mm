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

- (void)testULIDWrapper {
    // From example: https://github.com/suyash/ulid#usage
    ULID *ulid = [[ULID alloc] initWithTimestamp:1484581420 generator:^NSUInteger{ return 4; }];
    XCTAssertTrue([[ulid ULIDString] isEqualToString:@"0001C7STHC0G2081040G208104"]);
}

- (void)testULIDString {
    XCTAssertTrue([[[ULID new] ULIDString] lengthOfBytesUsingEncoding:NSUTF8StringEncoding] == 26);
}

- (void)testULIDEquality {
    NSTimeInterval timestamp = 1484581420;
    NSUInteger (^generator)() = ^NSUInteger{ return 4; };
    ULID *a = [[ULID alloc] initWithTimestamp:timestamp generator:generator];
    ULID *b = [[ULID alloc] initWithTimestamp:timestamp generator:generator];
    XCTAssertTrue([a isEqual:b]);
}

- (void)testULIDCopying {
    ULID *a = [ULID new];
    ULID *b = [a copy];
    XCTAssertTrue((uintptr_t)a != (uintptr_t)b);
}

@end
