//
//  NIDropDown.h
//  NIDropDown
//
//  Created by Bijesh N on 12/28/12.
//  Copyright (c) 2012 Nitor Infotech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NIDropDown;
@protocol NIDropDownDelegate
- (void) niDropDownDelegateMethod: (NIDropDown *) sender;
@end

@interface NIDropDown : UIView <UITableViewDelegate, UITableViewDataSource>
{
    NSString *animationDirection;
    UIImageView *imgView;
}
@property (nonatomic, retain) id <NIDropDownDelegate> delegate;
@property (nonatomic, retain) NSString *animationDirection;
@property (assign, nonatomic) NSUInteger selectedIndex;

- (void)clearButtonTitle;
- (void)hideDropDown:(UIButton *)b;
- (id)showDropDownFrom:(UIButton *)button atHeight:(CGFloat *)height contents:(NSArray *)arr imageArray:(NSArray *)imgArr direction:(NSString *)direction;
@end
