//
//  CCLSecondViewController.m
//  Luna
//
//  Created by Jing on 14-6-8.
//  Copyright (c) 2014年 CrystalClear. All rights reserved.
//

#import "CCLSecondViewController.h"
#import "ObjectiveFlickr.h"

@interface CCLSecondViewController () <OFFlickrAPIRequestDelegate>

@end

@implementation CCLSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Flickr

- (void)configureFlickr
{
    //context
    OFFlickrAPIContext *context = [[OFFlickrAPIContext alloc] initWithAPIKey:@"" sharedSecret:@""];
    
    //request
    OFFlickrAPIRequest *request = [[OFFlickrAPIRequest alloc] initWithAPIContext:context];
    [request setDelegate:self];
    
    //upload image
    NSData *imageData = nil;
    NSInputStream *imageStream = [NSInputStream inputStreamWithData:imageData];
    [request uploadImageStream:imageStream suggestedFilename:@"" MIMEType:@"image/jpeg" arguments:[NSDictionary dictionaryWithObjectsAndKeys:@"0", @"is_public", nil]];
}

- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest didCompleteWithResponse:(NSDictionary *)inResponseDictionary
{
    
}

- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest didFailWithError:(NSError *)inError
{
    
}

- (void)flickrAPIRequest:(OFFlickrAPIRequest *)inRequest imageUploadSentBytes:(NSUInteger)inSentBytes totalBytes:(NSUInteger)inTotalBytes
{
    
}

















@end
