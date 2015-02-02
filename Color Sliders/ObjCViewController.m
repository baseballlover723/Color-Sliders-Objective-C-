//
//  ObjCViewController.m
//  Color Sliders
//
//  Created by Philip Ross on 1/13/15.
//  Copyright (c) 2015 CSSE Department. All rights reserved.
//

#import "ObjCViewController.h"

@interface ObjCViewController ()

@end

@implementation ObjCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redSlider.value = 0.71;
    self.greenSlider.value = 0.04;
    self.blueSlider.value = 0.22;
    self.alphaSlider.value = 1.0;
    [self updateView];
    // Do any additional setup after loading the view.
}

- (IBAction)sliderChanged:(id)sender {
//    NSLog(@"Slider moved. Red: %f Green: %f Blue: %f Alpha: %f", self.redSlider.value, self.greenSlider.value, self.blueSlider.value, self.alphaSlider.value);
    [self updateView];
}

- (void) updateView {
    self.redLabel.text = [NSString stringWithFormat:@"%.2f", self.redSlider.value];
    self.greenLabel.text = [NSString stringWithFormat:@"%.2f", self.greenSlider.value];
    self.blueLabel.text = [NSString stringWithFormat:@"%.2f", self.blueSlider.value];
    self.alphaLabel.text = [NSString stringWithFormat:@"%.2f", self.alphaSlider.value];
    
    self.colorView.backgroundColor = [ [UIColor alloc] initWithRed:self.redSlider.value
                                                        green:self.greenSlider.value
                                                        blue: self.blueSlider.value
                                                        alpha: self.alphaSlider.value];
    
}
@end
