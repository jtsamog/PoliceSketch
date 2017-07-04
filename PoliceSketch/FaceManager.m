//
//  FaceManager.m
//  PoliceSketch
//
//  Created by Endeavour2 on 7/3/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "FaceManager.h"

@implementation FaceManager
- (instancetype)init{
    self = [super init];
    if (self) {
        _eyes = @[
                  [UIImage imageNamed:@"eyes_1.jpg"],
                  [UIImage imageNamed:@"eyes_2.jpg"],
                  [UIImage imageNamed:@"eyes_3.jpg"],
                  [UIImage imageNamed:@"eyes_4.jpg"],
                  [UIImage imageNamed:@"eyes_5.jpg"]
                  ];
        
        _noses = @[
                   [UIImage imageNamed:@"nose_1.jpg"],
                   [UIImage imageNamed:@"nose_2.jpg"],
                   [UIImage imageNamed:@"nose_3.jpg"],
                   [UIImage imageNamed:@"nose_4.jpg"],
                   [UIImage imageNamed:@"nose_5.jpg"]
                   ];
        
        _mouths = @[
                    [UIImage imageNamed:@"mouth_1.jpg"],
                    [UIImage imageNamed:@"mouth_2.jpg"],
                    [UIImage imageNamed:@"mouth_3.jpg"],
                    [UIImage imageNamed:@"mouth_4.jpg"],
                    [UIImage imageNamed:@"mouth_5.jpg"]
                    ];
    }
    return self;
}

- (UIImage *)nextEye{
    self.eyeIndex ++;
    return self.eyes[self.eyeIndex % self.eyes.count]; //using the modulus operator to cycle through the index
}

- (UIImage *)prevEye{
    self.eyeIndex --;
    return self.eyes[self.eyeIndex % self.eyes.count];
}

- (UIImage *)nextNose{
    self.noseIndex ++;
    return self.noses[self.noseIndex % self.noses.count];
}

- (UIImage *)prevNose{
        self.noseIndex --;
    return self.noses[self.noseIndex % self.noses.count];
}

- (UIImage *)nextMouth{
        self.mouthIndex ++;
    return self.mouths[self.mouthIndex % self.mouths.count];
}

- (UIImage *)prevMouth{
        self.mouthIndex --;
    return self.mouths[self.mouthIndex % self.mouths.count];
    
}

@end
