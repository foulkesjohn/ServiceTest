//
//  CategoriesViewController.h
//  ServiceTest
//
//  Created by John Foulkes on 01/09/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoriesViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

- (id) initWithViewModel: (CategoriesViewModel *) viewModel;

@property (nonatomic, weak) IBOutlet UICollectionView *categoryCollectionView;

@end