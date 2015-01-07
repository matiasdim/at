//
//  DetailViewController.m
//  AT
//
//  Created by Matías Gil Echavarría on 1/6/15.
//  Copyright (c) 2015 matiasdim. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.first.text = [self.detailDictionary objectForKey:@"first"];
    self.last.text = [self.detailDictionary objectForKey:@"last"];
    self.email.text = [self.detailDictionary objectForKey:@"email"];
    self.organization.text = [self.detailDictionary objectForKey:@"organization"];
    self.postalCode.text = [self.detailDictionary objectForKey:@"postalCode"];
    self.contactTitle.text = [self.detailDictionary objectForKey:@"title"];

    

    self.attList0Val.text = [self.detailDictionary objectForKey:@"address1"];
    self.attList1Val.text = [self.detailDictionary objectForKey:@"city"];
    self.attList2val.text = [self.detailDictionary objectForKey:@"country"];
    
    
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
