//
//  CategoryService.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Repository.h"

@protocol CategoryService <NSObject>

- (NSArray *) sortedCategories;

@end

@interface CategoryService : NSObject <CategoryService>

- (id) initWithCategoryRepository: (id<Repository>) categoryRepo;

@end