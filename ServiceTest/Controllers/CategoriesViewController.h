//
//  CategoriesViewController.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoriesViewModel.h"

@interface CategoriesViewController : UIViewController

- (id) initWithViewModel: (CategoriesViewModel *) viewModel;

@end