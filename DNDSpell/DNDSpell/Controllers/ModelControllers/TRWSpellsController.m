//
//  TRWSpellsController.m
//  DNDSpell
//
//  Created by Travis Wheeler on 10/10/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import "TRWSpellsController.h"
#import "TRWSpells.h"

static NSString * const kBaseURLString = @"http://www.dnd5eapi.co/api/";
static NSString * const kSpellsComponent = @"spells/";

@implementation TRWSpellsController

+ (instancetype)sharedContoller
{
    static TRWSpellsController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [[TRWSpellsController alloc] init];
    });
    return sharedController;
}
// MARK: - Fetch

- (void)searchForSpellWithSearchTerm:(NSString *)searchTerm completion:(void (^)(NSArray<TRWSpells *> * _Nonnull, NSError * _Nonnull))completion




@end
