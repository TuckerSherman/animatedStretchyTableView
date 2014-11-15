//
//  Tip.m
//  strechyHeader
//
//  Created by Tucker Sherman on 11/14/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import "Tip.h"

@implementation Tip

-(id)initWithTitle:(NSString*)title summary:(NSString*)summary image:(UIImage*)image{
    self = [super init];
    if (self) {
        self.title = title;
        self.summary = summary;
        self.image = image;
    }
    return self;
}


@end
