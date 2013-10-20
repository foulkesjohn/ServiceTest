//
//  CategoriesViewModel.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CategoryService.h"

@interface CategoriesViewModel : NSObject

@property (nonatomic, strong) NSArray *categories;

- (id) initWithCategoryService: (id<CategoryService>) categoryService;

@end