//
//  ESRoundedImageView.m
//  Engineering Solutions
//
//  Created by Marco Brescianini on 30/09/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import "ESRoundedImageView.h"

@implementation ESRoundedImageView

- (void)setRoundedCornerRadius:(CGFloat)roundedCornerRadius
{
	_roundedCornerRadius = roundedCornerRadius;
	self.layer.masksToBounds = YES;
	self.layer.cornerRadius = roundedCornerRadius;
	[self setNeedsDisplay];
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
	_borderWidth = borderWidth;
	self.layer.borderWidth = borderWidth;
	[self setNeedsDisplay];
}

- (void)setBorderColor:(UIColor *)borderColor
{
	_borderColor = borderColor;
	self.layer.borderColor = [borderColor CGColor];
	[self setNeedsDisplay];
}

@end
