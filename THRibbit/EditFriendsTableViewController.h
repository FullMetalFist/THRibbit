//
//  EditFriendsTableViewController.h
//  THRibbit
//
//  Created by Michael Vilabrera on 9/4/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface EditFriendsTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *allUsers;
@property (nonatomic, strong) PFUser *currentUser;

@end
