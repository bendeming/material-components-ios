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

#import "MDCBottomSheetMotionSpec.h"

#define EaseInOut _MDMBezier(0.42, 0.0, 0.58, 1.0)

@implementation MDCBottomSheetMotionSpec

+ (MDMMotionCurve)easeInOut {
  return _MDMBezier(0.42, 0.0, 0.58, 1.0);
}

+ (MDMMotionTiming)scrimAppearance {
  return (MDMMotionTiming){
    .duration = 0.250, .curve = [self easeInOut]
  };
}

+ (MDMMotionTiming)scrimDisappearance {
  return (MDMMotionTiming){
    .duration = 0.250, .curve = [self easeInOut]
  };
}

+ (MDMMotionTiming)onDragRelease {
  return (MDMMotionTiming)MDMModalMovementTiming;
}

@end
