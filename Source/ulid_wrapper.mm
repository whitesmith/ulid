//
//  ulid_wrapper.mm
//  ULID
//
//  Created by Ricardo Pereira on 14/02/2017.
//  Copyright © 2017 Whitesmith. All rights reserved.
//

#include "ulid_wrapper.h"

#ifdef __cplusplus
#include <stdio.h>
#include "ulid.hpp"
#endif

@implementation WSULID {
    ulid::ULID _ulid;
}

+ (instancetype)ulid {
    return [[WSULID alloc] init];
}

- (instancetype)init {
    if (self == [super self]) {
        _ulid = ulid::CreateNowRand();
    }
    return self;
}

- (NSString *)ULIDString {
    std::string value = ulid::Marshal(_ulid);
    return [NSString stringWithCString:value.c_str() encoding:[NSString defaultCStringEncoding]];
}

@end
