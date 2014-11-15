//
//  TipView.h
//  strechyHeader
//
//  Created by Tucker Sherman on 11/14/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tip.h"

@interface TipView : UIView

@property (strong, nonatomic) IBOutlet UILabel *title;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *summary;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControl;

//-(id)initWithTip:(Tip*)tip;


@end
