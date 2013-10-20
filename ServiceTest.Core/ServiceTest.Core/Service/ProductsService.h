//
//  ProductsService.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"
#import "ProductsRepository.h"

@protocol ProductsService <NSObject>

- (NSArray *) sortedProducts;
- (BOOL) saveProduct: (id<Product>) product;

@end

@interface ProductsService : NSObject <ProductsService>

- (id) initWithProductsRepository: (id<ProductsRepository>) productsRepo;

@end