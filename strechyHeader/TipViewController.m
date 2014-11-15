//
//  TipViewController.m
//  strechyHeader
//
//  Created by Tucker Sherman on 11/14/14.
//  Copyright (c) 2014 Tucker Sherman. All rights reserved.
//

#import "TipViewController.h"

static NSUInteger kTipViewOffset = 300;


@implementation TipViewController{
    NSUInteger currentlyShownTipIndex;
    NSArray* tips;
    
}

-(void)loadView{
    self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].nativeBounds];
    self.view.backgroundColor = [UIColor colorWithRed:.1 green:.1 blue:.1 alpha:.5];
    
}

- (void)viewDidLoad {
    self.tipCards = [NSMutableArray new];
    
    [super viewDidLoad];
    [self hardcodeSomeTips];
    [self loadArrayOfTipViews];
    self.animator = [[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    [self.view addSubview:self.tipCards[1]];

}

-(void)loadArrayOfTipViews{
    for (int i = 0; i < tips.count ; i++) {
        Tip* tip = tips[i];
        
        TipView* card = [[NSBundle mainBundle] loadNibNamed:@"TipView" owner:nil options:nil][0];
        card.title.text = tip.title;
        card.imageView.image = tip.image;
        card.summary.text = tip.summary;
        card.pageControl.currentPage = i;
        
        UIPanGestureRecognizer* cardDragGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(userSwiped:)];
        [card addGestureRecognizer:cardDragGesture];
        
        card.frame = CGRectMake(30, 100, self.view.frame.size.width-60, self.view.frame.size.height-200);
        
        [self.tipCards addObject:card];
    }
}

-(void)userSwiped:(UIPanGestureRecognizer*)gesture{
    CGPoint startPoint;
    
    if (gesture.state == UIGestureRecognizerStateBegan) {
        
        startPoint = [gesture locationInView:self.view];
        
        UISnapBehavior* snap = [[UISnapBehavior alloc]initWithItem:gesture.view snapToPoint:startPoint];
        [self.animator addBehavior:snap];
        NSLog(@"START x:%f y: %f",[[gesture view] center].x, [[gesture view] center].y);
    
    } else if (gesture.state == UIGestureRecognizerStateChanged) {
        TipView* tipCard = gesture.view;
        
        tipCard.frame.origin = [gesture locationInView:self.view];
        
    
    } else {
        [self.animator removeAllBehaviors];
    }

    
    
}

-(void)hardcodeSomeTips{
    Tip* tip1 = [[Tip alloc] initWithTitle:@"Don't Blink" summary:@"Fantastic shot of Sarah for the ALS Ice Bucket Challenge - And yes, she tried her hardest not to blink" image:[UIImage imageNamed:@"bg-header"]];
    
    Tip* tip2 = [[Tip alloc] initWithTitle:@"Explore" summary:@"Get out of the house!" image:[UIImage imageNamed:@"bg-header"]];
    
    Tip* tip3 = [[Tip alloc] initWithTitle:@"Take in the Moment" summary:@"Remember that each moment is unique and will never come again." image:[UIImage imageNamed:@"bg-header"]];
    
    tips = @[tip1, tip2, tip3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
