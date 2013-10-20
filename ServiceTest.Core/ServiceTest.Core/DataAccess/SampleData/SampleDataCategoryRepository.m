//
//  SampleDataCategoryRepository.m
//  ServiceTest
//
//  Created by John Foulkes on 07/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "SampleDataCategoryRepository.h"
#import <MBFaker/MBFaker.h>
#import "SampleCategory.h"
#import "SampleProduct.h"

@interface SampleDataCategoryRepository()

@property (nonatomic, retain) NSMutableArray *categories;

@end

@implementation SampleDataCategoryRepository

- (id)init
{
    self = [super init];
    if (self)
    {
        [self loadSampleData];
    }
    return self;
}

- (void) loadSampleData
{
    [MBFaker setLanguage: @"en"];
    
    self.categories = [NSMutableArray array];
    for (NSInteger i = 0; i < 100; i++)
    {
        SampleCategory *category = [SampleCategory new];
        category.name = [NSString stringWithFormat: @"Category %d", i];
        category.displayOrder = @(i);
        NSMutableArray *products = [NSMutableArray array];
        for (NSInteger j = 0; j < 100; j++)
        {
            SampleProduct *product = [SampleProduct new];
            product.name = [NSString stringWithFormat: @"Product %d", j];
            product.displayOrder = @(j);
            product.price = @23.55;
            [products addObject: product];
        }
        category.products = products;
        [self.categories addObject: category];
    }
}

- (NSArray *) all
{
    return self.categories;
}

- (instancetype) byAttribute: (NSString *) attribute value: (NSString *) value
{
    return nil;
}

- (BOOL) insert: (NSObject *) entity
{
    return FALSE;
}

@end