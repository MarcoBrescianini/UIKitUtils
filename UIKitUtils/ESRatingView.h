//
//  ESRatingView.h
//  Engineering Solutions
//
//  Created by Marco Brescianini on 30/09/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface ESRatingView : UIView

@property (nonatomic, strong) IBInspectable UIImage * starImage;
@property (nonatomic, strong) IBInspectable UIImage * highlightedStarImage;
@property (nonatomic, assign) IBInspectable BOOL editable;
@property (nonatomic, assign) IBInspectable float rating;
@property (nonatomic, assign) IBInspectable NSInteger maxRating;
@property (nonatomic, assign) IBInspectable CGFloat horizontalSpacing;

@end
