//
//  TYBaseCell.m
//  Engineering Solutions
//
//  Created by Marco Brescianini on 02/10/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import "ESBaseTableCell.h"

@implementation ESBaseTableCell


+(NSString *)reuseIdentifier
{
	@throw [NSException exceptionWithName:NSInternalInconsistencyException
								   reason:[NSString stringWithFormat:@"You must override %@ in a subclass", NSStringFromSelector(_cmd)]
								 userInfo:nil];
}

@end
