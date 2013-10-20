//
//  Category.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Category <NSObject>

- (NSString *) name;
- (void) setName: (NSString *) name;

- (NSNumber *) displayOrder;
- (void) setDisplayOrder: (NSNumber *) displayOrder;

- (NSSet *) products;
- (void) setProducts: (NSSet *) products;

@end