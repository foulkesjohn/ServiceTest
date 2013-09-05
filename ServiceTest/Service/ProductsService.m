//
//  ProductsService.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "ProductsService.h"

@interface ProductsService()

@property (nonatomic, strong) id<ProductsRepository> productsRepo;

@end

@implementation ProductsService

- (id) initWithProductsRepository: (id<ProductsRepository>) productsRepo
{
    self = [super init];
    if (self)
    {
        self.productsRepo = productsRepo;
    }    
    return self;
}

- (NSArray *) sortedProducts
{
    NSSortDescriptor *displayOrderDescriptor = [[NSSortDescriptor alloc] initWithKey: @"displayOrder" ascending: TRUE];
    NSArray *descriptors = @[displayOrderDescriptor];
    return [[self.productsRepo all] sortedArrayUsingDescriptors: descriptors];
}

- (BOOL) saveProduct:(id<Product>)product
{
    return FALSE;
}

@end