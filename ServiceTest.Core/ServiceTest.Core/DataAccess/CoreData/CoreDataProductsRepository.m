//
//  CoreDataRepository.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "CoreDataProductsRepository.h"
#import <MagicalRecord/MagicalRecord.h>
#import <MagicalRecord/CoreData+MagicalRecord.h>
#import "STProduct.h"

@implementation CoreDataProductsRepository

- (id)init
{
    self = [super init];
    if (self)
    {
        [MagicalRecord setupAutoMigratingCoreDataStack];
    }
    return self;
}

- (NSArray *) all
{
    return [STProduct MR_findAll];
}

- (instancetype) byAttribute: (NSString *) attribute value: (NSString *) value
{
    return [STProduct MR_findFirstByAttribute: attribute withValue: value];
}

- (BOOL) insert: (NSManagedObject *) entity
{
    [entity.managedObjectContext MR_saveOnlySelfAndWait];
    return TRUE;
}

@end