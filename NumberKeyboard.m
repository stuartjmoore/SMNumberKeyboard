//
//  NumberKeyboard.m
//
//  Created by Stuart Moore (@at_underscore) on 2/17/12.
//  Copyright (c) 2012 stuartjmoore. All rights reserved.
//

#import "NumberKeyboard.h"

@implementation NumberKeyboard

@synthesize textField = _textField, showsPeriod = _showsPeriod;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [keyOne setBackgroundImage:[[keyOne backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyTwo setBackgroundImage:[[keyTwo backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyThree setBackgroundImage:[[keyThree backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyFour setBackgroundImage:[[keyFour backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyFive setBackgroundImage:[[keyFive backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keySix setBackgroundImage:[[keySix backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keySeven setBackgroundImage:[[keySeven backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyEight setBackgroundImage:[[keyEight backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyNine setBackgroundImage:[[keyNine backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyZero setBackgroundImage:[[keyZero backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyPeriod setBackgroundImage:[[keyPeriod backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyBack setBackgroundImage:[[keyBack backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:79] forState:UIControlStateNormal];
    [keyReturn setBackgroundImage:[[keyReturn backgroundImageForState:UIControlStateNormal] stretchableImageWithLeftCapWidth:8 topCapHeight:251] forState:UIControlStateNormal];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    keyPeriod.hidden = !self.showsPeriod;
}

- (IBAction)keyPressed:(UIButton*)sender
{
    self.textField.text = [self.textField.text stringByAppendingString:sender.titleLabel.text];
}

- (IBAction)backspacePressed:(UIButton*)sender
{
    if(self.textField.text.length > 0)
        self.textField.text = [self.textField.text substringToIndex:self.textField.text.length-1];
}

- (IBAction)returnPressed:(UIButton*)sender
{
    [self.textField.delegate textFieldShouldReturn:self.textField];
}

// iOS 5 only
- (void)viewWillLayoutSubviews
{
    if(UIInterfaceOrientationIsPortrait(self.interfaceOrientation))
    {
        keyOne.titleLabel.font = [UIFont systemFontOfSize:22];
        keyTwo.titleLabel.font = [UIFont systemFontOfSize:22];
        keyThree.titleLabel.font = [UIFont systemFontOfSize:22];
        keyFour.titleLabel.font = [UIFont systemFontOfSize:22];
        keyFive.titleLabel.font = [UIFont systemFontOfSize:22];
        keySix.titleLabel.font = [UIFont systemFontOfSize:22];
        keySeven.titleLabel.font = [UIFont systemFontOfSize:22];
        keyEight.titleLabel.font = [UIFont systemFontOfSize:22];
        keyNine.titleLabel.font = [UIFont systemFontOfSize:22];
        keyZero.titleLabel.font = [UIFont systemFontOfSize:22];
        keyPeriod.titleLabel.font = [UIFont systemFontOfSize:22];
        keyBack.titleLabel.font = [UIFont systemFontOfSize:22];
        keyReturn.titleLabel.font = [UIFont systemFontOfSize:22];
    }
    else
    {
        keyOne.titleLabel.font = [UIFont systemFontOfSize:26];
        keyTwo.titleLabel.font = [UIFont systemFontOfSize:26];
        keyThree.titleLabel.font = [UIFont systemFontOfSize:26];
        keyFour.titleLabel.font = [UIFont systemFontOfSize:26];
        keyFive.titleLabel.font = [UIFont systemFontOfSize:26];
        keySix.titleLabel.font = [UIFont systemFontOfSize:26];
        keySeven.titleLabel.font = [UIFont systemFontOfSize:26];
        keyEight.titleLabel.font = [UIFont systemFontOfSize:26];
        keyNine.titleLabel.font = [UIFont systemFontOfSize:26];
        keyZero.titleLabel.font = [UIFont systemFontOfSize:26];
        keyPeriod.titleLabel.font = [UIFont systemFontOfSize:26];
        keyBack.titleLabel.font = [UIFont systemFontOfSize:26];
        keyReturn.titleLabel.font = [UIFont systemFontOfSize:26];
    }
}

@end
