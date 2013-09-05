//
//  ArrangeCategories.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "ArrangeCategories.h"
#import "OCMock.h"

@implementation ArrangeCategories

+ (NSArray *) unsortedCategories
{
    id categoryOne = [OCMockObject niceMockForClass: [NSObject class]];
    id categoryTwo = [OCMockObject niceMockForClass: [NSObject class]];
    id categoryThree = [OCMockObject niceMockForClass: [NSObject class]];
    
    [[[categoryOne stub] andReturn: @1] valueForKeyPath: @"displayOrder"];
    [[[categoryTwo stub] andReturn: @2] valueForKeyPath: @"displayOrder"];
    [[[categoryThree stub] andReturn: @3] valueForKeyPath: @"displayOrder"];
    [[[categoryOne stub] andReturn: @1] valueForKey: @"displayOrder"];
    [[[categoryTwo stub] andReturn: @2] valueForKey: @"displayOrder"];
    [[[categoryThree stub] andReturn: @3] valueForKey: @"displayOrder"];
    
    return @[categoryTwo, categoryThree, categoryOne];
}

@end