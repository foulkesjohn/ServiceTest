//
//  Repository.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Repository <NSObject>

- (NSArray *) all;
- (instancetype) byAttribute: (NSString *) attribute value: (NSString *) value;
- (BOOL) insert: (NSManagedObject *) entity;

@end