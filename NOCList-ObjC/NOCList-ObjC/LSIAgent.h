//
//  LSIAgent.h
//  NOCList-ObjC
//
//  Created by patelpra on 7/22/20.
//  Copyright © 2020 Crus Technologies. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIAgent : NSObject

// Properties

@property (nonatomic) NSString *coverName;
@property (nonatomic) NSString *realName;
@property (nonatomic) NSNumber *accessLevel;
@property (nonatomic) NSNumber *compromised;

- (instancetype)initWithCoverName:(NSString *)coverName realName:(NSString *)realName accessLevel:(int)accessLevel compromised:(BOOL)compromised;


@end

NS_ASSUME_NONNULL_END
