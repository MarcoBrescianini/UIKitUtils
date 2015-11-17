//
//  ESRoundedButton.h
//  Engineering Solutions
//
//  Created by Marco Brescianini on 30/09/15.
//  Copyright © 2015 Engineering Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface ESRoundedButton : UIButton

@property (nonatomic, assign) IBInspectable CGFloat roundedCornerRadius;
@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, copy) IBInspectable UIColor * borderColor;

@end
