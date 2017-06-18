//
//  ViewController.h
//  algorithm
//
//  Created by Godfather on 6/18/17.
//  Copyright © 2017 Godfather. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *placeholderView;

@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@property (weak, nonatomic) IBOutlet UITextField *changeIndex;
- (IBAction)start:(UIButton *)sender;

@end

