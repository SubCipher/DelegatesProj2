//
//  KPSecondVC.m
//  DelegateProj2
//
//  Created by MacMan on 9/16/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "KPSecondVC.h"

@implementation KPSecondVC

-(void)viewDidLoad {
    
    //[super viewDidLoad];
    [self.view setBackgroundColor: [UIColor greenColor]];
    
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(20,100,200,100)];
    
    [self.textField setBackgroundColor:[UIColor whiteColor]];

    UIButton *button =[[UIButton alloc]initWithFrame:CGRectMake(20,200,150,50)];
    [button setTitle:@"Save" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(saveText) forControlEvents:UIControlEventTouchUpInside];
    [button setBackgroundColor:[UIColor blueColor]];
    
    [self.view addSubview:self.textField];
    [self.view addSubview:button];
}


-(void)saveText {
    
    [self.delegate sendTextToViewController:self.textField.text];
    
}


@end
