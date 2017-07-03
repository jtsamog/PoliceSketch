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
    
    if (self.eyeIndex == [self.eyes count] -1) {
        self.eyeIndex = 0;
    } else{
        self.eyeIndex ++;
    }
        return self.eyes[self.eyeIndex];
}

- (UIImage *)prevEye{
    if (self.eyeIndex == 0) {
        self.eyeIndex = [self.eyes count] -1;
    } else{
        self.eyeIndex --;
    }
    return self.eyes[self.eyeIndex];

}

- (UIImage *)nextNose{
    
    if (self.noseIndex == [self.noses count] -1) {
        self.noseIndex = 0;
    } else{
        self.noseIndex ++;
    }
    return self.noses[self.noseIndex];
}

- (UIImage *)prevNose{
    if (self.noseIndex == 0) {
        self.noseIndex = [self.noses count] -1;
    } else{
        self.noseIndex --;
    }
    return self.noses[self.noseIndex];
    
}

- (UIImage *)nextMouth{
    
    if (self.mouthIndex == [self.mouths count] -1) {
        self.mouthIndex = 0;
    } else{
        self.mouthIndex ++;
    }
    return self.mouths[self.mouthIndex];
}

- (UIImage *)prevMouth{
    if (self.mouthIndex == 0) {
        self.mouthIndex = [self.mouths count] -1;
    } else{
        self.mouthIndex --;
    }
    return self.mouths[self.mouthIndex];
    
}

@end
