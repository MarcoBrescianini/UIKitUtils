//
//  ESRatingView.m
//  Engineering Solutions
//
//  Created by Marco Brescianini on 30/09/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import "ESRatingView.h"

@implementation ESRatingView




-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = 	[super initWithCoder:aDecoder];

	[self setDefaults];
	
	return self;
}

-(instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	
	[self setDefaults];
	
	return self;
}

-(void)setDefaults
{
	_maxRating = 5;
	_rating = 0;
	_editable = NO;
	_horizontalSpacing = 10;
}

-(void)setEditable:(BOOL)editable
{
	_editable = editable;
	self.userInteractionEnabled = editable;
}

-(void)setRating:(float)rating
{
	if(rating > self.maxRating)
		@throw [[NSException alloc] initWithName:NSInternalInconsistencyException reason:@"Rating must be lesser than max rating" userInfo:nil];
	
	if(rating < 0)
		@throw [[NSException alloc] initWithName:NSInternalInconsistencyException reason:@"Rating must be greater or equal to zero" userInfo:nil];
	
	_rating = rating;
	//TODO: SHOULD INVALIDATE VIEW
		[self setNeedsDisplay];
}

-(void)setMaxRating:(NSInteger)maxRating
{
	_maxRating = maxRating;
	//TODO: SHOULD INVALIDATE VIEW
		[self setNeedsDisplay];
}

-(void)setHorizontalSpacing:(CGFloat)horizontalSpacing
{
	_horizontalSpacing = horizontalSpacing;
	//TODO: SHOULD INVALIDATE VIEW
		[self setNeedsDisplay];
}


-(void)setStarImage:(UIImage *)starImage
{
	_starImage = starImage;
	//TODO: SHOULD INVALIDATE VIEW
		[self setNeedsDisplay];
}


-(void)setHighlightedStarImage:(UIImage *)highlightedStarImage
{
	_highlightedStarImage = highlightedStarImage;
	//TODO: SHOULD INVALIDATE VIEW
	[self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
	
	for (NSInteger i = 0; i < self.maxRating; i++)
	{
		if( i < self.rating)
		{
			[self drawImage:self.highlightedStarImage atPosition:i];
		}else
		{
			[self drawImage:self.starImage atPosition:i];
		}
	}
}

-(void)drawImage:(UIImage*)image atPosition:(NSInteger)position
{
	[image drawAtPoint:[self pointOfStarAtPosition:position highlighted:YES]];
}

-(CGPoint)pointOfStarAtPosition:(NSInteger)position highlighted:(BOOL)hightlighted
{
	CGSize imageSize = hightlighted ? self.highlightedStarImage.size : self.starImage.size;
	
	CGFloat x = 0;

	x = position * imageSize.width;
		
	x += position > 0 ? position * self.horizontalSpacing : 0;
	
	
	CGFloat y = (self.bounds.size.height - imageSize.height) / 2.0;

	return CGPointMake(x  ,y);
}

-(CGSize)intrinsicContentSize
{
	CGFloat width = 0;
	CGFloat height = fmax(self.starImage.size.height, self.highlightedStarImage.size.height);;

	
	for (NSInteger i = 0; i < self.maxRating; i++)
	{
		CGFloat currentWidth = 0;
		if(i < self.rating)
		{
			currentWidth = self.highlightedStarImage.size.width;
		}else
		{
			currentWidth = self.starImage.size.width;
		}
		
		width += currentWidth;
	}
	
	width += self.maxRating - 1 > 0 ? (self.maxRating - 1) * self.horizontalSpacing : 0;
	
	return CGSizeMake(width, height);
}


@end
