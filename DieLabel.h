//
//  DieLabel.h
//  Farkle
//
//  Created by Gabriel Borri de Azevedo on 1/14/15.
//  Copyright (c) 2015 Gabriel Enterprises. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate <NSObject>

-(void)onLabelTapped:(UILabel *) label;

@end


@interface DieLabel: UILabel

-(void)roll;

@property (nonatomic, weak) id <DieLabelDelegate> delegate;
@property BOOL isSelected;


@end
