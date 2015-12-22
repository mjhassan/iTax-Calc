//
//  ViewController.m
//  iTax Calc
//
//  Created by Jahid on 12/22/15.
//  Copyright © 2015 Jahid. All rights reserved.
//

#import "ViewController.h"
@import ionicons;

@interface ViewController ()

@end

@implementation ViewController

#pragma mark- life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self adjustAppearance];
}

#pragma mark- memory management
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- private
- (void)adjustAppearance {
    yearField.leftView = [self sideView];
    yearField.leftViewMode = UITextFieldViewModeAlways;
    
    UIImage* image = [IonIcons imageWithIcon:ion_ios_arrow_down
                                   iconColor:[UIColor blueColor]
                                    iconSize:20.0
                                   imageSize:CGSizeMake(20.0f, 20.0f)];
    
    UIButton* listButton = [UIButton buttonWithType:UIButtonTypeCustom];
    listButton.frame = (CGRect){0.0, 0.0, yearField.bounds.size.height, yearField.bounds.size.height};
    [listButton setImage:image forState:UIControlStateNormal];
    [listButton addTarget:self action:@selector(showYearList:) forControlEvents:UIControlEventTouchUpInside];
    yearField.rightView = listButton;
    yearField.rightViewMode  = UITextFieldViewModeAlways;
}

- (UIView*)sideView {
    UIView* lView = [[UIView alloc] initWithFrame:(CGRect){0.0, 0.0, 10.0, 1.0}];
    return lView;
}

#pragma mark- button actions
- (void)showYearList:(UIButton*)sender {
    NSLog(@"showing");
}

@end
