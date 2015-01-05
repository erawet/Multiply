//
//  ViewController.m
//  Multiply
//
//  Created by Don Wettasinghe on 1/5/15.
//  Copyright (c) 2015 Don Wettasinghe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@property (weak, nonatomic) IBOutlet UISlider *multiplierValueSlider;

@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;

@property (weak, nonatomic) IBOutlet UILabel *multiplierLabel;
@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
}



- (IBAction)onCalculateButtonPressed:(id)sender
{
    [self.numberTextField becomeFirstResponder];
    
    int finalResult=0;
   // NSString *operation;
    
    int numberText = [self.numberTextField.text intValue];
    
    int multiplierLable = [self.multiplierLabel.text intValue];
    
    if (self.operatorSegmentControl.selectedSegmentIndex==0) {
        //operation=@"*";
        finalResult= numberText * multiplierLable;
    }
    else
    {
        //operation=@"/";
        finalResult= numberText / multiplierLable;
    }
    
    
    
    if (finalResult>=20) {
        self.view.backgroundColor=[UIColor greenColor];
    }
    else
    {
        self.view.backgroundColor=[UIColor whiteColor];
    }
    
    // 7 - Fizz & Buzz
    
    if ((finalResult% 3 == 0) && (finalResult% 5 == 0) ) {
        // fizzbuzz
        self.answerLabel.text=@"fizzbuzz";
    }
    else if (finalResult% 3 == 0)
    {
        self.answerLabel.text=@"fizz";
    }
    else if (finalResult% 5 == 0)
    {
        self.answerLabel.text=@"buzz";
    }
    else
    {
        self.answerLabel.text=[NSString stringWithFormat:@"%d", finalResult];
  
    }
    
    [self.view endEditing:YES];
    
}

- (IBAction)onSliderChange:(id)sender {
    
    int sliderVal=self.multiplierValueSlider.value;
    
    //self.multiplierLabel.text=[NSString stringWithFormat:@"%0.1f", self.multiplierValueSlider.value];
     self.multiplierLabel.text=[NSString stringWithFormat:@"%d", sliderVal];
    
}

@end
