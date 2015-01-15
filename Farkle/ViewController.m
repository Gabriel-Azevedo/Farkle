//
//  ViewController.m
//  Farkle
//
//  Created by Gabriel Borri de Azevedo on 1/14/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h"

@interface ViewController () <DieLabelDelegate, UIGestureRecognizerDelegate>

//Properties for the dice labels
@property (weak, nonatomic) IBOutlet DieLabel *topLeftLabel;
@property (weak, nonatomic) IBOutlet DieLabel *topMiddleLabel;
@property (weak, nonatomic) IBOutlet DieLabel *topRightLabel;
@property (weak, nonatomic) IBOutlet DieLabel *bottomLeftLabel;
@property (weak, nonatomic) IBOutlet DieLabel *bottomMiddleLabel;
@property (weak, nonatomic) IBOutlet DieLabel *bottomRightLabel;

//Player info
@property (weak, nonatomic) IBOutlet UILabel *player1Label;
@property (weak, nonatomic) IBOutlet UILabel *player2Label;
@property (weak, nonatomic) IBOutlet UILabel *score1Label;
@property (weak, nonatomic) IBOutlet UILabel *score2Label;

//Winning conditions
@property NSMutableSet *threeOnes;
@property NSMutableSet *threeTwos;
@property NSMutableSet *threeThrees;
@property NSMutableSet *threeFours;
@property NSMutableSet *threeFives;
@property NSMutableSet *threeSixes;

@property NSArray *labelsArray;

@property DieLabel *die;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createLabelsArray];

    self.threeOnes = [[NSMutableSet alloc]initWithObjects: @"1",@"1",@"1", nil];
    self.threeTwos = [[NSMutableSet alloc]initWithObjects: @"2",@"2",@"2", nil];
    self.threeThrees = [[NSMutableSet alloc]initWithObjects: @"3",@"3",@"3", nil];
    self.threeFours = [[NSMutableSet alloc]initWithObjects: @"4",@"4",@"4", nil];
    self.threeFives = [[NSMutableSet alloc]initWithObjects: @"5",@"5",@"5", nil];
    self.threeSixes = [[NSMutableSet alloc]initWithObjects: @"6",@"6",@"6", nil];

    self.allWinningSets = [[NSMutableSet alloc] initWithObjects:self.threeOnes, self.threeTwos, self.threeThrees, self.threeFours, self.threeFives, self.threeSixes, nil];

    for (DieLabel *label in self.labelsArray)

    {
        label.delegate = self;
    }
}

-(void)createLabelsArray
{
    self.labelsArray = [[NSArray alloc] initWithObjects:self.topLeftLabel, self.topMiddleLabel, self.topRightLabel, self.bottomLeftLabel, self.bottomMiddleLabel, self.bottomRightLabel, nil];
}

-(void) onLabelTapped:(UILabel *)label
{

    [self.dice addObject:label.text];
}

//method that tells all labels to roll
- (IBAction)onRollButtonPressed:(UIButton *)sender
{
    for (DieLabel *label in self.labelsArray)
    {
        if (label.backgroundColor == nil)
        {
            [label roll];
        }
    }
}




@end
