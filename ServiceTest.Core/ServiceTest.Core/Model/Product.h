//
//  Product.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Product <NSObject>

- (NSString *) name;
- (void) setName: (NSString *) name;

- (NSNumber *) price;
- (void) setPrice: (NSNumber *) price;

- (NSNumber *) displayOrder;
- (void) setDisplayOrder: (NSNumber *) displayOrder;

@end