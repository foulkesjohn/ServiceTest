//
//  SampleCategory.h
//  ServiceTest
//
//  Created by John Foulkes on 08/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Category.h"

@interface SampleCategory : NSObject <Category>

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *displayOrder;
@property (nonatomic, strong) NSArray *products;

@end