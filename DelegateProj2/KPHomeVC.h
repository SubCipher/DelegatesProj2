//
//  KPHomeVC.h
//  DelegateProj2
//
//  Created by MacMan on 9/16/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KPSecondVC.h"


@interface KPHomeVC : UIViewController <CakeDelegate>

@property (nonatomic,strong) UILabel *favouriteCakeLabel;


@end
