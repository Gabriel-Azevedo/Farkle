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

@end


@implementation DieLabel


// tell our viewcontroller that we were tapped
// add this die as a tapped die on the vc
-(IBAction)onTapped:(UITapGestureRecognizer *)sender
{
if ([self.text isEqualToString:@"1"] || [self.text isEqualToString:@"5"])
    {
        self.backgroundColor = [UIColor orangeColor];
        [self.selectedlabels addObject:self];
        

    }

}


-(void)roll
{
    //dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        int randomNumber = arc4random_uniform(6)+1;

    self.text = [NSString stringWithFormat:@"%i", randomNumber];

    //});
}

@end
