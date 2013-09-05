//
//  ProductsViewModel.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductsService.h"

@interface ProductsViewModel : NSObject

@property (nonatomic, strong) NSArray *products;

- (id) initWithProductsService: (id<ProductsService>) productsService;
- (void) saveProducts;

@end