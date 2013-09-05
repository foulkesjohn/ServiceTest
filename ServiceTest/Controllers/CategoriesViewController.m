//
//  CategoriesViewController.m
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import "CategoriesViewController.h"
#import "ProductsViewController.h"

@interface CategoriesViewController ()

@property (nonatomic, strong) CategoriesViewModel *viewModel;

@end

@implementation CategoriesViewController

- (id) initWithViewModel: (CategoriesViewModel *) viewModel
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

- (void) showProducts
{
    id controller = [[TyphoonComponentFactory defaultFactory] componentForType: [ProductsViewController class]];
    [self.navigationController pushViewController: controller animated: TRUE];
}

@end
