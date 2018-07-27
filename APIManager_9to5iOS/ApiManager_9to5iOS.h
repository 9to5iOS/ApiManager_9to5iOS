//
//  ApiManager_9to5iOS.h
//  APIManager_9to5iOS
//
//  Created by admin on 27/07/18.
//  Copyright © 2018 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    TAG_REQUEST_API_1 = 100,
    TAG_REQUEST_API_2,
}REQUEST_TAG;

// API Completion Block with Response
typedef void(^APICompletionionBlock)(id response, NSError *error , REQUEST_TAG tag);

@interface ApiManager_9to5iOS : NSObject

-(void)hit9to5iOSWebServiceMethod:(BOOL)isPost isAccessTokenRequired:(BOOL)tokenRequired webServiceURL:(NSString *)apiURL withRequestBody:(id)requestBody andApiTag:(REQUEST_TAG)ApiTag completionHandler:(APICompletionionBlock)ApiCompletionBlock;


@end
