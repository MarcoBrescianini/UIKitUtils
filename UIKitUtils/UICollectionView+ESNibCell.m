//
//  UICollectionView+ESNibCell.m
//  Engineering Solutions
//
//  Created by Marco Brescianini on 07/10/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import "UICollectionView+ESNibCell.h"

@implementation UICollectionView (ESNibCell)

-(void)registerNibFromClass:(Class)aClass forCellWithIdentifier:(NSString *)identifier
{
	[self registerNib:[UINib nibWithNibName:NSStringFromClass(aClass) bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:identifier];
}

-(void)registerNibFromClass:(nonnull Class)aClass forSupplementaryViewOfKind:(NSString*)kind withIdentifier:(nonnull NSString *)identifier
{
	[self registerNib:[UINib nibWithNibName:NSStringFromClass(aClass) bundle:[NSBundle mainBundle]] forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
}

@end
