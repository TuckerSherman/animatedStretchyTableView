//
//  NewsItem.m
//  strechyHeader
//
//  Created by Tucker Sherman on 11/13/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import "NewsItem.h"

@implementation NewsItem


-(id) initNewsItemWith:(NewsCategory)category headline:(NSString*)headline story:(NSString*)story {
    self = [super init];
    if (self) {
        self.category = category;
        self.headline = headline;
        self.story = story;
    }
    return self;
}

@end
