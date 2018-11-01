// Copyright 2016-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCDialogShadowedView.h"

#import <MaterialComponents/MaterialShadowElevations.h>
#import <MaterialComponents/MaterialShadowLayer.h>

@implementation MDCDialogShadowedView

+ (Class)layerClass {
  return [MDCShadowLayer class];
}

- (MDCShadowLayer *)shadowLayer {
  return (MDCShadowLayer *)self.layer;
}

- (instancetype)init {
  self = [super init];
  if (self) {
    [[self shadowLayer] setElevation:MDCShadowElevationDialog];
  }
  return self;
}

- (MDCShadowElevation)elevation {
  return [self shadowLayer].elevation;
}

- (void)setElevation:(MDCShadowElevation)elevation {
  [[self shadowLayer] setElevation:elevation];
}

@end
