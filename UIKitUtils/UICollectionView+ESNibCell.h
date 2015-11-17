//
//  UICollectionView+ESNibCell.h
//  Engineering Solutions
//
//  Created by Marco Brescianini on 07/10/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

#define registerCell(COLLECTION, CELL) [COLLECTION registerNibFromClass:[CELL class] forCellWithIdentifier:[CELL reuseIdentifier]]
#define registerSupplementaryView(COLLECTION, KIND, VIEW) [COLLECTION registerNibFromClass:[HEADER class] forSupplementaryViewOfKind:KIND withIdentifier:[VIEW reuseIdentifier]]

@interface UICollectionView (ESNibCell)

-(void)registerNibFromClass:(nonnull Class)aClass forCellWithIdentifier:(nonnull NSString * )identifier;

-(void)registerNibFromClass:(nonnull Class)aClass forSupplementaryViewOfKind:(nonnull NSString*)kind withIdentifier:(nonnull NSString *)identifier;

@end
