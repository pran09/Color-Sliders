//
//  ColorSliderViewController.m
//  Color Sliders
//
//  Created by CSSE Department on 3/20/18.
//  Copyright © 2018 Praneet CSSE484. All rights reserved.
//

#import "ColorSliderViewController.h"

@interface ColorSliderViewController ()

@end

@implementation ColorSliderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.redSlider.value = 0.5;
    self.greenSlider.value = 0.5;
    self.blueSlider.value = 0.5;
    self.alphaSlider.value = 0.1;
    [self updateView];
}

- (IBAction)sliderChanged:(id)sender {
    NSLog(@"Slider changed");
}

- (void) updateView {
    self.redLabel.text = [NSString stringWithFormat:@"%.2f", self.redSlider.value];
    self.greenLabel.text = [NSString stringWithFormat:@"%.2f", self.greenSlider.value];
    self.blueLabel.text = [NSString stringWithFormat:@"%.2f", self.blueSlider.value];
    self.alphaLabel.text = [NSString stringWithFormat:@"%.2f", self.alphaSlider.value];
    
    self.colorView.backgroundColor = [[UIColor alloc] initWithRed:self.redSlider.value green:self.greenSlider.value blue:(CGFloat)self.blueSlider.value alpha:self.alphaSlider.value];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
