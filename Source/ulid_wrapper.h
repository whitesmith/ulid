//
//  ulid_wrapper.h
//  ULID
//
//  Created by Ricardo Pereira on 14/02/2017.
//  Copyright © 2017 Whitesmith. All rights reserved.
//

#ifndef ulid_wrapper_h
#define ulid_wrapper_h

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WSULID : NSObject

/* Create a new autoreleased WSULID */
+ (instancetype)ulid;

/* Return a string description of the ULID, such as "0001C7STHC0G2081040G208104" */
@property (readonly, copy) NSString *ULIDString;

@end

NS_ASSUME_NONNULL_END

#endif /* ulid_wrapper_h */
