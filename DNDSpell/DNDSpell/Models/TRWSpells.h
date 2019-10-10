//
//  TRWSpells.h
//  DNDSpell
//
//  Created by Travis Wheeler on 10/10/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TRWSpells : NSObject

NS_ASSUME_NONNULL_BEGIN

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, copy) NSString *url;

- (instancetype)initWithName:(NSString *)name
                         url:(NSString *)url;
 
@end

@interface TRWSpells (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

NS_ASSUME_NONNULL_END
@end

