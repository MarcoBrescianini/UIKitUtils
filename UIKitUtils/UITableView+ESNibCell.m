//
//  UITableView+ESNibCell.m
//  Engineering Solutions
//
//  Created by Marco Brescianini on 02/10/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import "UITableView+ESNibCell.h"

@implementation UITableView (ESNibCell)

-(void)registerNibFromClass:(Class)aClass forCellWithIdentifier:(NSString *)identifier
{
	[self registerNib:[UINib nibWithNibName:NSStringFromClass(aClass) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:identifier] ;
}

-(void)registerNibFromClass:(Class)aClass forHeaderWithIdentifier:(NSString *)identifier
{
	[self registerNib:[UINib nibWithNibName:NSStringFromClass(aClass) bundle:[NSBundle mainBundle]] forHeaderFooterViewReuseIdentifier:identifier];
}

@end
