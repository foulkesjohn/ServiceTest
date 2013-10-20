//
//  CoreDataCategoryRepository.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "CoreDataCategoryRepository.h"
#import <MagicalRecord/MagicalRecord.h>
#import <MagicalRecord/CoreData+MagicalRecord.h>
#import "STCategory.h"

@implementation CoreDataCategoryRepository

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
    return [STCategory MR_findAll];
}

- (instancetype) byAttribute: (NSString *) attribute value: (NSString *) value
{
    return [STCategory MR_findFirstByAttribute: attribute withValue: value];
}

- (BOOL) insert: (NSManagedObject *) entity
{
    [entity.managedObjectContext MR_saveOnlySelfAndWait];
    return TRUE;
}

@end