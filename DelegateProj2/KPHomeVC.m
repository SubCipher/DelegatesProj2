//
//  KPHomeVC.m
//  DelegateProj2
//
//  Created by MacMan on 9/16/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "KPHomeVC.h"


@implementation KPHomeVC

-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
   
    self.favouriteCakeLabel = [[UILabel alloc]initWithFrame:CGRectMake(50,100,250,100)];
    [self.favouriteCakeLabel setBackgroundColor:[UIColor redColor]];
    [self.favouriteCakeLabel setText:@"Favorite Cake Goes Here"];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:CGRectMake(100,200,100,100)];
    [button setTitle: @"Click for Next!" forState:UIControlStateNormal];
    [button addTarget:self action: @selector(presentSecondVC) forControlEvents:UIControlEventTouchUpInside];
    


[self.view addSubview:self.favouriteCakeLabel];
[self.view addSubview:button];

}

-(void)presentSecondVC{
    
    KPSecondVC * secondVC = [[KPSecondVC alloc]init];
    [secondVC setDelegate:self];
    [self presentViewController :secondVC animated:YES completion:nil];
    
    
}

-(void)sendTextToViewController:(NSString *)string {
    [self.favouriteCakeLabel setText:string];
    
}

@end
