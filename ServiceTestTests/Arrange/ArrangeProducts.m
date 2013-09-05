//
//  ArrangeProducts.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "ArrangeProducts.h"
#import "STProduct.h"
#import "OCMock.h"

@implementation ArrangeProducts

+ (NSArray *) unsortedProducts
{
    id productOne = [OCMockObject niceMockForClass: [NSObject class]];
    id productTwo = [OCMockObject niceMockForClass: [NSObject class]];
    id productThree = [OCMockObject niceMockForClass: [NSObject class]];

    [[[productOne stub] andReturn: @1] valueForKeyPath: @"displayOrder"];
    [[[productTwo stub] andReturn: @2] valueForKeyPath: @"displayOrder"];
    [[[productThree stub] andReturn: @3] valueForKeyPath: @"displayOrder"];
    [[[productOne stub] andReturn: @1] valueForKey: @"displayOrder"];
    [[[productTwo stub] andReturn: @2] valueForKey: @"displayOrder"];
    [[[productThree stub] andReturn: @3] valueForKey: @"displayOrder"];
    
    return @[productTwo, productThree, productOne];
}

@end