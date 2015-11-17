//
//  UITableView+ESNibCell.h
//  Engineering Solutions
//
//  Created by Marco Brescianini on 02/10/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

#define registerCell(TABLE, CELL) [TABLE registerNibFromClass:[CELL class] forCellWithIdentifier:[CELL reuseIdentifier]]
#define registerHeader(TABLE, HEADER) [TABLE registerNibFromClass:[HEADER class] forHeaderWithIdentifier:[HEADER reuseIdentifier]]

@interface UITableView (ESNibCell)

-(void)registerNibFromClass:(nonnull Class)aClass forCellWithIdentifier:(nonnull NSString * )identifier;

-(void)registerNibFromClass:(nonnull Class)aClass forHeaderWithIdentifier:(nonnull NSString *)identifier;

@end
