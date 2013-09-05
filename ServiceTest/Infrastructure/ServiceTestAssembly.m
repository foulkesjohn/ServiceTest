//
//  ServiceTestAssembly.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "ServiceTestAssembly.h"
#import "ProductsViewModel.h"
#import "ProductsViewController.h"
#import "CoreDataProductsRepository.h"
#import "CategoriesViewController.h"
#import "CategoriesViewModel.h"
#import "CategoryService.h"
#import "CoreDataCategoryRepository.h"

@implementation ServiceTestAssembly

- (id) productsViewController
{
    return [TyphoonDefinition withClass: [ProductsViewController class] initialization:^(TyphoonInitializer *initializer) {
        
        initializer.selector = @selector(initWithViewModel:);
        [initializer injectWithDefinition: [self productsViewModel]];
        
    }];
}

- (id) productsViewModel
{
    return [TyphoonDefinition withClass: [ProductsViewModel class] initialization:^(TyphoonInitializer *initializer) {
        
        initializer.selector = @selector(initWithProductsService:);
        [initializer injectWithDefinition: [self productsService]];
        
    }];
}

- (id) productsService
{
    return [TyphoonDefinition withClass: [ProductsService class] initialization:^(TyphoonInitializer *initializer) {
        
        initializer.selector = @selector(initWithProductsRepository:);
        [initializer injectWithDefinition: [self productsRepository]];
        
    }];
}

- (id) productsRepository
{
    return [TyphoonDefinition withClass: [CoreDataProductsRepository class]];
}

- (id) categoriesViewController
{
    return [TyphoonDefinition withClass: [CategoriesViewController class] initialization:^(TyphoonInitializer *initializer) {
        
        initializer.selector = @selector(initWithViewModel:);
        [initializer injectWithDefinition: [self categoriesViewModel]];
        
    }];
}

- (id) categoriesViewModel
{
    return [TyphoonDefinition withClass: [CategoriesViewModel class] initialization:^(TyphoonInitializer *initializer) {
        
        initializer.selector = @selector(initWithCategoryService:);
        [initializer injectWithDefinition: [self categoryService]];
    }];
}

- (id) categoryService
{
    return [TyphoonDefinition withClass: [CategoryService class] initialization:^(TyphoonInitializer *initializer) {
        
        initializer.selector = @selector(initWithCategoryRepository:);
        [initializer injectWithDefinition: [self categoryRepository]];
        
    }];
}

- (id) categoryRepository
{
    return [TyphoonDefinition withClass: [CoreDataCategoryRepository class]];
}

@end