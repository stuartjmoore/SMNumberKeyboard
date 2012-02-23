//
//  NumberKeyboard.h
//  Optimis Sport
//
//  Created by Stuart Moore on 2/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface NumberKeyboard : UIViewController
{
    IBOutlet UIButton *keyOne, *keyTwo, *keyThree, *keyFour, *keyFive, *keySix, *keySeven, *keyEight, *keyNine, *keyZero, *keyPeriod, *keyMinus, *keyBack, *keyReturn;
}

@property (nonatomic, assign) UITextField *textField;
@property (nonatomic) BOOL showsPeriod, showsMinus;

- (IBAction)playKeySound:(UIButton*)sender;
- (IBAction)keyPressed:(UIButton*)sender;
- (IBAction)minusToggled:(UIButton*)sender;
- (IBAction)periodToggled:(UIButton*)sender;
- (IBAction)backspacePressed:(UIButton*)sender;
- (IBAction)returnPressed:(UIButton*)sender;

@end
