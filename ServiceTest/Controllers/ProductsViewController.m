//
//  ProductsViewController.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "ProductsViewController.h"

@interface ProductsViewController ()

@property (nonatomic, strong) ProductsViewModel *viewModel;

@end

@implementation ProductsViewController

- (id) initWithViewModel: (ProductsViewModel *) viewModel
{
    self = [super init];
    if (self)
    {
        self.viewModel = viewModel;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end
