//
//  TRWSpellsController.h
//  DNDSpell
//
//  Created by Travis Wheeler on 10/10/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TRWSpells;

@interface TRWSpellsController : NSObject
NS_ASSUME_NONNULL_BEGIN

+ (instancetype)sharedContoller;

- (void)searchForSpellWithSearchTerm:(NSString *) searchTerm completion:(void(^) (NSArray<TRWSpells *> *spells, NSError *error))completion;

NS_ASSUME_NONNULL_END

@end
