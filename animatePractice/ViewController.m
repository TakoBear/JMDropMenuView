//
//  ViewController.m
//  animatePractice
//
//  Created by 李健銘 on 2013/10/25.
//  Copyright (c) 2013年 李健銘. All rights reserved.
//

#import "ViewController.h"
#import "JMDropMenuView.h"

@interface ViewController () <JMDropMenuViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *view1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view1.backgroundColor = [UIColor clearColor];
    [view1 setImage:[UIImage imageNamed:@"camera.png"]];
    [self.view addSubview:view1];
    
    UIImageView *view2 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view2.backgroundColor = [UIColor clearColor];
    [view2 setImage:[UIImage imageNamed:@"album.png"]];
    [self.view addSubview:view2];
    
    UIImageView *view3 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    view3.backgroundColor = [UIColor clearColor];
    [view3 setImage:[UIImage imageNamed:@"search.png"]];
    [self.view addSubview:view3];
    
    JMDropMenuView *menu = [[JMDropMenuView alloc] initWithViews:@[view1, view2, view3]];
    menu.delegate = self;
    [self.view addSubview:menu];
    [menu popOut];

}

- (void)dropMenu:(JMDropMenuView *)menu didSelectAtIndex:(NSInteger)index
{
    NSLog(@"index %ld", (long)index);
    [menu dismiss];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
