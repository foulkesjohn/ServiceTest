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

NSString *const CategoryCellIdentifier = @"CategoryCell";

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
	
    [self.categoryCollectionView registerClass: [UICollectionViewCell class] forCellWithReuseIdentifier: CategoryCellIdentifier];
}

- (void) showProducts
{
//    id controller = [[TyphoonComponentFactory defaultFactory] componentForType: [ProductsViewController class]];
//    [self.navigationController pushViewController: controller animated: TRUE];
}

#pragma mark - Collection view

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    NSArray *categories = self.viewModel.categories;
    return [categories count];
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSArray *categories = self.viewModel.categories;
    id<Category> category = categories[section];
    NSSet *products = category.products;
    return [products count];
}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier: CategoryCellIdentifier forIndexPath: indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    
    return cell;
}

- (CGSize) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPathcollectionView
{
    return CGSizeMake(100, 100);
}

- (UIEdgeInsets) collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(50, 50, 50, 50);
}

@end