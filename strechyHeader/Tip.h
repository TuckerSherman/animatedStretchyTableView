//
//  Tip.h
//  strechyHeader
//
//  Created by Tucker Sherman on 11/14/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface Tip : NSObject
@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* summary;
@property (nonatomic, strong) UIImage* image;

-(id)initWithTitle:(NSString*)title summary:(NSString*)summary image:(UIImage*)image;



@end
