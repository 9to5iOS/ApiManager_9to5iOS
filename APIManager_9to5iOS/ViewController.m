//
//  ViewController.m
//  APIManager_9to5iOS
//
//  Created by admin on 27/07/18.
//  Copyright © 2018 admin. All rights reserved.
//

#import "ViewController.h"
#import "ApiManager_9to5iOS.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [self hitAPISample];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)hitAPISample
{
    NSString *webURLString=@"your web url here ";
    ApiManager_9to5iOS *objRequest = [[ApiManager_9to5iOS alloc] init];
    
    NSMutableDictionary *dictBody = [NSMutableDictionary new];
    [dictBody setObject:@"value here" forKey:@"KEY1"];
    [dictBody setObject:@"value here" forKey:@"KEY2"];
    [dictBody setObject:@"value here" forKey:@"KEY3"];
    [dictBody setObject:@"value here" forKey:@"KEY4"];

    
    [objRequest hit9to5iOSWebServiceMethod:YES isAccessTokenRequired:NO webServiceURL:webURLString withRequestBody:dictBody andApiTag:TAG_REQUEST_API_1 completionHandler:^(id response, NSError *error, REQUEST_TAG tag)
    
    {
        NSLog(@"Server Response = %@",response);

        if (error == nil) {
            NSLog(@"Parse here");
        }
        else{
            
            NSLog(@"Error occur");

        }
        
    }];
    
}





@end
