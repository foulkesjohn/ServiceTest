//
//  STCategory.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class STProduct;

@interface STCategory : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * displayOrder;
@property (nonatomic, retain) NSSet *products;
@end

@interface STCategory (CoreDataGeneratedAccessors)

- (void)addProductsObject:(STProduct *)value;
- (void)removeProductsObject:(STProduct *)value;
- (void)addProducts:(NSSet *)values;
- (void)removeProducts:(NSSet *)values;

@end
