//
//  UILabel+ESFont.m
//  Engineering Solutions
//
//  Created by Marco Brescianini on 08/10/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import "UILabel+ESFont.h"

@implementation UILabel (ESFont)

-(void)changeFontSize:(CGFloat)size
{
	[self setFont:[UIFont fontWithName:self.font.fontName size:size]];
}

@end
