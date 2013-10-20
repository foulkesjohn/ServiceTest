//
//  BaseRepository.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "BaseRepository.h"

@implementation BaseRepository

- (NSArray *) all
{
    return nil;
}

- (instancetype) byAttribute:(NSString *)attribute value:(NSString *)value
{
    return nil;
}

- (BOOL) insert:(NSObject *)entity
{
    return FALSE;
}

@end