//
//  ProductsViewModel.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "ProductsViewModel.h"

@interface ProductsViewModel()

@property (nonatomic, strong) id<ProductsService> productsService;

@end

@implementation ProductsViewModel

- (id) initWithProductsService: (id<ProductsService>) productsService
{
    self = [super init];
    if (self)
    {
        self.productsService = productsService;
        self.products = [self.productsService sortedProducts];
    }
    return self;
}

- (void) saveProducts
{
    for (id<Product> product in self.products)
    {
        [self.productsService saveProduct: product];
    }
}

@end