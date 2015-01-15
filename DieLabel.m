//
//  DieLabel.m
//  Farkle
//
//  Created by Gabriel Borri de Azevedo on 1/14/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import "DieLabel.h"
#import "ViewController.h"


@interface DieLabel()

@property UIViewController *parentVC;

@end


@implementation DieLabel


// tell our viewcontroller that we were tapped
// add this die as a tapped die on the vc
-(IBAction)onTapped:(UITapGestureRecognizer *)sender
{
if ([self.text isEqualToString:@"1"] || [self.text isEqualToString:@"5"])
    {
        self.backgroundColor = [UIColor orangeColor];
        self.isSelected = true;
    }

}


-(void)roll
{
    if (self.isSelected == false)
    {
    int randomNumber = arc4random_uniform(6)+1;
    self.text = [NSString stringWithFormat:@"%i", randomNumber];
    }
}

@end
