//
//  ProductsViewController.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProductsViewModel.h"

@interface ProductsViewController : UIViewController

- (id) initWithViewModel: (ProductsViewModel *) viewModel;

@end