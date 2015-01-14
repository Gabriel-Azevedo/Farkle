//
//  DieLabel.m
//  Farkle
//
//  Created by Gabriel Borri de Azevedo on 1/14/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


// tell our viewcontroller that we were tapped
// add this die as a tapped die on the vc
-(IBAction)onTapped:(UITapGestureRecognizer *)sender
{


}

-()


// we dont care about telling our viewcontroller that we rolled
// we just care about setting our text to a random number
-(void)roll
{
    //dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{

        int randomNumber = arc4random_uniform(6)+1;
        NSLog(@"%i",randomNumber);
        [self.delegate dieRollWithValue:randomNumber];

    //});
}

@end
