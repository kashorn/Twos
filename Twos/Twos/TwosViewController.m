//
//  TwosViewController.m
//  Twos
//
//  Created by Keith Ashorn on 5/21/14.
//  Copyright (c) 2014 kashorn. All rights reserved.
//

#import "TwosViewController.h"

@interface TwosViewController ()

@end

@implementation TwosViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slideTilesRight:(UISwipeGestureRecognizer *)sender {
    NSAssert(sender.direction == UISwipeGestureRecognizerDirectionRight, @"Swipe direction other than RIGHT presented to Right Swipe handler");
    [self slideTilesInDirection:UISwipeGestureRecognizerDirectionRight];
}

- (IBAction)slideTilesLeft:(UISwipeGestureRecognizer *)sender {
    NSAssert(sender.direction == UISwipeGestureRecognizerDirectionLeft, @"Swipe direction other than LEFT presented to Left Swipe handler");
    [self slideTilesInDirection:UISwipeGestureRecognizerDirectionLeft];
}

- (IBAction)slideTilesDown:(UISwipeGestureRecognizer *)sender {
    NSAssert(sender.direction == UISwipeGestureRecognizerDirectionDown, @"Swipe direction other than DOWN presented to Down Swipe handler");
    [self slideTilesInDirection:UISwipeGestureRecognizerDirectionDown];
}

- (IBAction)slideTilesUp:(UISwipeGestureRecognizer *)sender {
    NSAssert(sender.direction == UISwipeGestureRecognizerDirectionUp, @"Swipe direction other than UP presented to Up Swipe handler");
    [self slideTilesInDirection:UISwipeGestureRecognizerDirectionUp];
}

- (void)slideTilesInDirection:(UISwipeGestureRecognizerDirection)dir {
    
    // collapse open space in swipe direction
    // combine all appropriate tiles
    // (scoring?)
    
    [self dropNewTile];
}

- (void)dropNewTile{
    // choose new open location
    // decide if it should be 2 or 4 (maybe 8 with low prob?)
    // add a view at that location
}

@end
