//
//  CategoriesViewModel.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "CategoriesViewModel.h"

@interface CategoriesViewModel()

@property (nonatomic, strong) id<CategoryService> categoryService;

@end

@implementation CategoriesViewModel

- (id) initWithCategoryService: (id<CategoryService>) categoryService
{
    self = [super init];
    if (self)
    {
        self.categoryService = categoryService;
    }
    return self;
}



@end