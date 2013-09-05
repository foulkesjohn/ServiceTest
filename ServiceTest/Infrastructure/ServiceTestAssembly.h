//
//  ServiceTestAssembly.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Typhoon/Typhoon.h>

@interface ServiceTestAssembly : TyphoonAssembly

- (id) productsViewController;
- (id) productsViewModel;
- (id) productsService;
- (id) productsRepository;
- (id) categoriesViewController;
- (id) categoriesViewModel;
- (id) categoryService;
- (id) categoryRepository;

@end