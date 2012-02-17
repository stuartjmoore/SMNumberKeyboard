//
//  NumberKeyboard.m
//
//  Created by Stuart Moore (@at_underscore) on 2/17/12.
//  Copyright (c) 2012 stuartjmoore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberKeyboard : UIViewController
{
    IBOutlet UIButton *keyOne, *keyTwo, *keyThree, *keyFour, *keyFive, *keySix, *keySeven, *keyEight, *keyNine, *keyZero, *keyPeriod, *keyBack, *keyReturn;
}

@property (nonatomic, assign) UITextField *textField;
@property (nonatomic) BOOL showsPeriod;

- (IBAction)keyPressed:(UIButton*)sender;
- (IBAction)backspacePressed:(UIButton*)sender;
- (IBAction)returnPressed:(UIButton*)sender;

@end
