//
//  SampleProduct.h
//  ServiceTest
//
//  Created by John Foulkes on 08/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface SampleProduct : NSObject <Product>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *price;
@property (nonatomic, strong) NSNumber *displayOrder;

@end
