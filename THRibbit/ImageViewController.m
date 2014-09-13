//
//  ImageViewController.m
//  THRibbit
//
//  Created by Michael Vilabrera on 9/10/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import "ImageViewController.h"
#import <Parse/Parse.h>

@interface ImageViewController ()

@end

@implementation ImageViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    PFFile *imageFile = [self.message objectForKey:@"file"];
    NSURL *imageFileURL = [[NSURL alloc] initWithString:imageFile.url];
    NSData *imageData = [NSData dataWithContentsOfURL:imageFileURL];
    self.imageView.image = [UIImage imageWithData:imageData];
    NSString *senderName = [self.message objectForKey:@"senderName"];
    NSString *title = [NSString stringWithFormat:@"Sent from %@", senderName];
    self.navigationItem.title = title;
}

- (void) viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if ([self respondsToSelector:@selector(timeout)]) {
        [NSTimer scheduledTimerWithTimeInterval:10.0f target:self selector:@selector(timeout) userInfo:nil repeats:NO];

    }
    else {
        NSLog(@"Error: selector missing");
    }
}

#pragma mark - Helper Methods

- (void) timeout {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
