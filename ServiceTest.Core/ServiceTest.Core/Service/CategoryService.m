//
//  CategoryService.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "CategoryService.h"

@interface CategoryService()

@property (nonatomic, strong) id<Repository> categoryRepo;

@end

@implementation CategoryService

- (id) initWithCategoryRepository: (id<Repository>) categoryRepo
{
    self = [super init];
    if (self)
    {
        self.categoryRepo = categoryRepo;
    }
    return self;
}

- (NSArray *) sortedCategories
{
    NSSortDescriptor *displayOrderDescriptor = [[NSSortDescriptor alloc] initWithKey: @"displayOrder" ascending: TRUE];
    NSArray *descriptors = @[displayOrderDescriptor];
    return [[self.categoryRepo all] sortedArrayUsingDescriptors: descriptors];
}

@end