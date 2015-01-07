//
//  ViewController.h
//  AT
//
//  Created by Matías Gil Echavarría on 1/6/15.
//  Copyright (c) 2015 matiasdim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFNetworking.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) NSDictionary *contactsDictionary;
@property (nonatomic,retain) NSMutableArray *tableData;

- (IBAction)refreshData:(id)sender;

@end

