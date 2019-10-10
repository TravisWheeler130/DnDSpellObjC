//
//  TRWSpells.m
//  DNDSpell
//
//  Created by Travis Wheeler on 10/10/19.
//  Copyright © 2019 Travis Wheeler. All rights reserved.
//

#import "TRWSpells.h"

@implementation TRWSpells

- (instancetype)initWithName:(NSString *)name url:(NSString *)url
{
    self = [super init];
    if (self)
    {
        _name = [name copy];
        _url = [url copy];
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSDictionary *resultsDictionary = dictionary[@"results"];
    
    NSString *name = resultsDictionary[[TRWSpells nameKey]];
    NSString *url = resultsDictionary[[TRWSpells urlKey]];
    
    return [self initWithName:name url:url];
}

+ (NSString *)nameKey
{
    return @"name";
}

+ (NSString *)urlKey
{
    return @"url";
}


@end
