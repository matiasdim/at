//
//  DetailViewController.h
//  AT
//
//  Created by Matías Gil Echavarría on 1/6/15.
//  Copyright (c) 2015 matiasdim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (nonatomic) NSDictionary *detailDictionary;

@property (weak, nonatomic) IBOutlet UILabel *first;
@property (weak, nonatomic) IBOutlet UILabel *email;
@property (weak, nonatomic) IBOutlet UILabel *organization;
@property (weak, nonatomic) IBOutlet UILabel *postalCode;
@property (weak, nonatomic) IBOutlet UILabel *contactTitle;
@property (weak, nonatomic) IBOutlet UILabel *last;


@property (weak, nonatomic) IBOutlet UILabel *attList0Val;
@property (weak, nonatomic) IBOutlet UILabel *attList1Val;
@property (weak, nonatomic) IBOutlet UILabel *attList2val;



@end
