//
//  CategoryCell.h
//  ServiceTest
//
//  Created by John Foulkes on 20/10/2013.
//  Copyright (c) 2013 John Foulkes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryCell : UICollectionViewCell

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *productLabel;

@end