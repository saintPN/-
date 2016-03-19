//
//  ViewController.m
//  animationTest
//
//  Created by saintPN-Mac on 15/12/20.
//  Copyright © 2015年 saintPN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (weak, nonatomic) IBOutlet UIImageView *imageview2;

@property NSInteger indicator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.indicator = 1;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hhhh:(id)sender {
    self.indicator = -self.indicator;

    CABasicAnimation *z = [CABasicAnimation animationWithKeyPath:@"zPosition"];
    z.fromValue = @(self.indicator);
    z.toValue = @(-self.indicator);
    z.duration = 1;
    
    CAKeyframeAnimation *r = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
    r.values = @[@0, @0.1, @0];
    r.duration = 1;
    r.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                           [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    
    CAKeyframeAnimation *p = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    p.values = @[[NSValue valueWithCGPoint:CGPointZero],
                 [NSValue valueWithCGPoint:CGPointMake(90, -20)],
                 [NSValue valueWithCGPoint:CGPointZero]];
    p.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    p.additive = YES;
    p.duration = 1;
    
    CAAnimationGroup *g = [[CAAnimationGroup alloc] init];
    g.animations = @[z, r, p];
    g.duration = 1;
    self.imageView.layer.zPosition = -self.indicator;
    [self.imageView.layer addAnimation:g forKey:nil];
    
    
    CABasicAnimation *z1 = [CABasicAnimation animationWithKeyPath:@"zPosition"];
    z1.fromValue = @(-self.indicator);
    z1.toValue = @(self.indicator);
    z1.duration = 1;
    
    CAKeyframeAnimation *r1 = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
    r1.values = @[@0, @-0.1, @0];
    r1.duration = 1;
    r1.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    
    CAKeyframeAnimation *p1 = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    p1.values = @[[NSValue valueWithCGPoint:CGPointZero],
                 [NSValue valueWithCGPoint:CGPointMake(-85, -20)],
                 [NSValue valueWithCGPoint:CGPointZero]];
    p1.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                          [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    
    p1.additive = YES;
    p1.duration = 1;
    
    CAAnimationGroup *g1 = [[CAAnimationGroup alloc] init];
    g1.animations = @[z1, r1, p1];
    g1.duration = 1;
    self.imageview2.layer.zPosition = self.indicator;
    [self.imageview2.layer addAnimation:g1 forKey:nil];
    
    
    
    
    
}











































@end
