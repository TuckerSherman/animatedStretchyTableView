//
//  NewsItem.h
//  strechyHeader
//
//  Created by Tucker Sherman on 11/13/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    categoryWorld,
    categoryAmericas,
    categoryEurope,
    categoryMiddleEast,
    categoryAfrica,
    categoryAsiaPacific
} NewsCategory;

@interface NewsItem : NSObject

@property (nonatomic) NewsCategory category;
@property (nonatomic,strong) NSString* headline;
@property (nonatomic, strong) NSString* story;

-(id) initNewsItemWith:(NewsCategory)category headline:(NSString*)headline story:(NSString*)story;


@end
