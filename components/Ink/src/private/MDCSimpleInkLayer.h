/*
 Copyright 2017-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import <QuartzCore/QuartzCore.h>

#import "MDCSimpleInkView.h"

@interface MDCSimpleInkLayer : CAShapeLayer

@property(nonatomic, assign) BOOL startAnimationActive;
@property(nonatomic, assign) CGFloat endAnimationDelay;
@property(nonatomic, assign) CGFloat finalRadius;
@property(nonatomic, assign) CGFloat initialRadius;
@property(nonatomic, strong) UIColor *inkColor;
@property(nonatomic, strong) MDCSimpleInkCompletionBlock completionBlock;

- (void)startAnimationAtPoint:(CGPoint)point;

- (void)endAnimation;

@end