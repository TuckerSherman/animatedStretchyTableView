//
//  TipViewController.h
//  strechyHeader
//
//  Created by Tucker Sherman on 11/14/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tip.h"
#import "TipView.h"

@interface TipViewController : UIViewController

@property (strong,nonatomic) NSMutableArray* tipCards;
@property (strong, nonatomic) UIDynamicAnimator* animator;


@end
