A number only keyboard for the iPad.

To use:

    keyboard = [[NumberKeyboard alloc] initWithNibName:@"NumberKeyboard" bundle:nil];
    keyboard.textField = youTextField;
    keyboard.showsPeriod = NO;
    youTextField.inputView = keyboard.view;

Also, release the keyboard in dealloc and include "NumberKeyboard.h".


Licensed under: do whatever you want.