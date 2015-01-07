//
//  ViewController.m
//  AT
//
//  Created by Matías Gil Echavarría on 1/6/15.
//  Copyright (c) 2015 matiasdim. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "AuthManager.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString * const BASEURL = @"http://dev4.ieventstest.com/restapi/registration?max_size=10";
NSDictionary * detailDictionary;

- (void)viewDidLoad {
    [super viewDidLoad];
 
    /*
     
    self.contactsDictionary = @{@"registrantList":@[@{
                                                        @"attrList":@[@{@"name":@"Attendee Type", @"val":@"Customer"},@{@"name":@"Attendee Status",@"val":@"Pending"},@{@"name":@"Country", @"val":@"United States"}],
                                                        @"optInAttendeeSearch":@false,
                                                        @"optInMsgTickler":@false,
                                                        @"optInRFID":@false,
                                                        @"optInTwitterEnrollment":@false,
                                                        @"optInTwitterSessionAttendance":@false,
                                                        @"additionalInfo1":@"",
                                                        @"additionalInfo2":@"",
                                                        @"additionalInfo3":@"",
                                                        @"additionalInfo4":@"",
                                                        @"additionalInfo5":@"",
                                                        @"address1":@"One Owens Corning Parkway",
                                                        @"address2":@"",
                                                        @"altPhone":@"",
                                                        @"blogUrl":@"",
                                                        @"city":@"Toledo",
                                                        @"country":@"TX",
                                                        @"county":@"",
                                                        @"customerId":@"kc692920f42b442b4139c0691f6f",
                                                        @"department":@"",
                                                        @"descr":@"",
                                                        @"email":@"chad.farschman@owenscorning.com",
                                                        @"facebookUrl":@"",
                                                        @"fax":@"",
                                                        @"first":@"Chad",
                                                        @"fullName":@"",
                                                        @"imAccount":@"",
                                                        @"last":@"Farschman",
                                                        @"lastModified":@"2014-09-17-16.17.17.270000",
                                                        @"linkedinUrl":@"",
                                                        @"loginId":@"____",
                                                        @"mobile":@"",
                                                        @"nickName":@"",
                                                        @"organization":@"Owens Corning",
                                                        @"personalEmail":@"",
                                                        @"phone":@"419-248-7523",
                                                        @"postalCode":@"43659",
                                                        @"prefix":@"",
                                                        @"region":@"",
                                                        @"id":@"20140917211717244978000000",
                                                        @"num":@"AA3NW8P",
                                                        @"title":@"Enterprise Architect",
                                                        @"twitterAccount":@"",
                                                        @"url":@""
                                                        },
                                                    @{
                                                        @"attrList":@[@{@"name":@"2Attendee Type", @"val":@"2Customer"},@{@"name":@"2Attendee Status",@"val":@"Pending"},@{@"name":@"Country", @"val":@"United States"}],
                                                        @"optInAttendeeSearch":@false,
                                                        @"optInMsgTickler":@false,
                                                        @"optInRFID":@false,
                                                        @"optInTwitterEnrollment":@false,
                                                        @"optInTwitterSessionAttendance":@false,
                                                        @"additionalInfo1":@"",
                                                        @"additionalInfo2":@"",
                                                        @"additionalInfo3":@"",
                                                        @"additionalInfo4":@"",
                                                        @"additionalInfo5":@"",
                                                        @"address1":@"2One Owens Corning Parkway",
                                                        @"address2":@"",
                                                        @"altPhone":@"",
                                                        @"blogUrl":@"",
                                                        @"city":@"Toledo",
                                                        @"country":@"TX",
                                                        @"county":@"",
                                                        @"customerId":@"2kc692920f42b442b4139c0691f6f",
                                                        @"department":@"",
                                                        @"descr":@"",
                                                        @"email":@"chad2.farschman@owenscorning.com",
                                                        @"facebookUrl":@"",
                                                        @"fax":@"",
                                                        @"first":@"Chad2",
                                                        @"fullName":@"",
                                                        @"imAccount":@"",
                                                        @"last":@"2Farschman",
                                                        @"lastModified":@"2014-09-17-16.17.17.270000",
                                                        @"linkedinUrl":@"",
                                                        @"loginId":@"____",
                                                        @"mobile":@"",
                                                        @"nickName":@"",
                                                        @"organization":@"Owens Corning",
                                                        @"personalEmail":@"",
                                                        @"phone":@"419-248-7523",
                                                        @"postalCode":@"43659",
                                                        @"prefix":@"",
                                                        @"region":@"",
                                                        @"id":@"20140917211717244978000000",
                                                        @"num":@"AA3NW8P",
                                                        @"title":@"Enterprise Architect",
                                                        @"twitterAccount":@"",
                                                        @"url":@""
                                                        }
                                                    ]};
  
    
   
    
    self.tableData = [self.contactsDictionary objectForKey:@"registrantList"]; //[[NSMutableArray alloc] initWithObjects:@"One",@"Two",@"Three",@"Four",@"Five",@"Six",@"Seven",@"Eight",@"Nine",@"Ten", nil];
    
  */
  
/*
    NSURL *url = [NSURL URLWithString:BASEURL];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *requestOperation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    requestOperation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [requestOperation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *requestOperation, id responseObject) {
        
        self.contactsDictionary = (NSDictionary *)responseObject;
        self.tableData = [self.contactsDictionary objectForKey:@"registrantList"];
        [self.tableView reloadData];
        
    } failure:^(AFHTTPRequestOperation *requestOperation, NSError *error) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"There was an error, try again please!"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
    
*/
    
    [self getData];
    
    
    //[requestOperation start];
     

    

}


- (IBAction)refreshData:(id)sender{
    [self getData];
}

-(void) getData{
    [[AuthManager sharedManager] setUsername:@"mobiletest@alliancetech.com" andPassword:@"mtAlliancetech1*"];
    
    [[AuthManager sharedManager] GET:@"/restapi/registration" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        self.contactsDictionary = (NSDictionary *)responseObject;
        self.tableData = [self.contactsDictionary objectForKey:@"registrantList"];
        [self.tableView reloadData];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"There was an error, try again please!"
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"Ok"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma - markup TableView Delegate Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    
    return [self.tableData count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    static NSString *simpleTableIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
    }

    cell.textLabel.text = [[self.tableData objectAtIndex:indexPath.row] objectForKey:@"first"];
    
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath

{
    detailDictionary = [self.tableData objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"rowDetail" sender:self];
    
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *detailVC = segue.destinationViewController;
    detailVC.detailDictionary = detailDictionary;
}


@end
