//
//  KPSecondVC.h
//  DelegateProj2
//
//  Created by MacMan on 9/16/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CakeDelegate <NSObject>

-(void)sendTextToViewController:(NSString *)string;

@end



@interface KPSecondVC : UIViewController

@property (strong,nonatomic)UITextField *textField;

@property (nonatomic,weak) id<CakeDelegate>delegate;


@end
