//
//  FaceManager.h
//  PoliceSketch
//
//  Created by Endeavour2 on 7/3/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FaceManager : NSObject
@property (nonatomic) NSArray *eyes;
@property (nonatomic) NSArray *noses;
@property (nonatomic) NSArray *mouths;
@property (nonatomic) NSInteger eyeIndex;
@property (nonatomic) NSInteger noseIndex;
@property (nonatomic) NSInteger mouthIndex;
-(UIImage*)nextEye;
-(UIImage*)prevEye;
-(UIImage*)nextNose;
-(UIImage*)prevNose;
-(UIImage*)nextMouth;
-(UIImage*)prevMouth;
@end
