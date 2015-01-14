//
//  ViewController.m
//  Farkle
//
//  Created by Gabriel Borri de Azevedo on 1/14/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <DiceDelegate>

@property (weak, nonatomic) IBOutlet DieLabel *topLeftLabel;
@property (weak, nonatomic) IBOutlet DieLabel *topMiddleLabel;
@property (weak, nonatomic) IBOutlet DieLabel *topRightLabel;
@property (weak, nonatomic) IBOutlet DieLabel *bottomLeftLabel;
@property (weak, nonatomic) IBOutlet DieLabel *bottomMiddleLabel;
@property (weak, nonatomic) IBOutlet DieLabel *bottomRightLabel;

@property NSArray *labelsArray;

@property DieLabel *die;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.die = [[DieLabel alloc] init];
    [self createLabelsArray];
//    self.die.delegate = self;
    for (DieLabel *label in self.labelsArray)
    {
        label.delegate = self;
    }

    
}


//method that tells all labels to roll
//

-(void)dieRollWithValue:(int)value
{
    NSLog(@"here");
    for (DieLabel *label in self.labelsArray)
    {
        [self.die roll];
        label.text = [NSString stringWithFormat:@"%i", value];
        NSLog(@"%d", value);
    }
}

-(void)createLabelsArray
{
    self.labelsArray = [[NSArray alloc] initWithObjects:self.topLeftLabel, self.topMiddleLabel, self.topRightLabel, self.bottomLeftLabel, self.bottomMiddleLabel, self.bottomRightLabel, nil];
}



@end
