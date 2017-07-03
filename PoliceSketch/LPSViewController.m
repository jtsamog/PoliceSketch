//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "FaceManager.h"

@interface LPSViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *eyeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;
@property (nonatomic) FaceManager *faceManager;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   self.faceManager = [FaceManager new];
    self.eyeImageView.image = self.faceManager.eyes[0];
    self.noseImageView.image = self.faceManager.noses[0];
    self.mouthImageView.image = self.faceManager.mouths[0];
	
    // Here is where you will create the buttons & image views and add them to the view.
}
- (IBAction)nextEye {
    self.eyeImageView.image = [self.faceManager nextEye];
}
- (IBAction)prevEye {
    self.eyeImageView.image = [self.faceManager prevEye];
}
- (IBAction)nextNose {
    self.noseImageView.image = [self.faceManager nextNose];
}
- (IBAction)prevNose {
    self.noseImageView.image = [self.faceManager prevNose];
}
- (IBAction)nextMouth {
    self.mouthImageView.image = [self.faceManager nextMouth];
}
- (IBAction)prevMouth {
    self.mouthImageView.image = [self.faceManager prevMouth];
}

@end
